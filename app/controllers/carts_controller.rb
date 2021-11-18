class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_cart, only: [:create, :show]
  before_action :set_cart_item, only: [:create]

  def create
    if @cart
      @cart.items << @item
    end
  end

  def show
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
