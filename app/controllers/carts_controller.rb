class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_cart, only: [:create, :show, :destroy]
  before_action :set_cart_item, only: [:create, :destroy]

  def create
    if @cart
      @cart.items << @item
      flash[:alert] = "Item added to cart!"
    end
    redirect_to item_path(@item)
    
  end

  def show
    if @cart.items.length == 0
      flash[:alert] = "Cart empty!"
    end

    @line_items = []

    @cart.items.each do |i|
      @line_items << {
      name: i.title,
      description: i.description,
      images: [i.picture],
      amount: i.price,
      currency: 'jpy',
      quantity: 1
      }
    end

    if @line_items.length > 0
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,

        line_items: [@line_items],
        payment_intent_data: {
          metadata: {
            cart_id: @cart.id
          }
        },
        success_url: "#{root_url}payments/success?itemId=#{@cart.id}",
        cancel_url: "#{root_url}items"
      )
      @session_id = session.id
    end
  end

  def destroy
    @cart.cart_items.delete(params[:id])
    flash[:alert] = "Item removed from cart"
    redirect_to cart_path
  end

  private

  def set_cart_item
    id = params[:id]
    @item = Item.find(id)
  end

  def set_user_cart
    if user_signed_in? && !current_user.cart
      @cart = Cart.new
      @cart.user_id = current_user.id
      @cart.save
    elsif current_user.cart
      @cart = current_user.cart
    else
      redirect_to new_user_session_path
    end
  end

end
