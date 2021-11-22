class ItemsController < ApplicationController
  before_action :read_items, :read_users, :read_limbs
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :authorize_user, only: [:edit, :update, :destroy]
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
    @item = Item.new
  end

  def create
    if user_signed_in?
      @item = current_user.items.create(item_params)
      redirect_to items_path
      flash[:alert] = "Item Created!"
    else
      redirect_to new_user_session_path
      flash[:alert] = "Sign in to continue"
    end
  end

  def show
    if current_user
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,
        line_items: [{
          name: @item.title,
          description: @item.description,
          images: [@item.picture],
          amount: @item.price,
          currency: 'jpy',
          quantity: 1
        }],
        payment_intent_data: {
          metadata: {
            item_id: @item.id
          }
        },
        success_url: "#{root_url}payments/success?itemId=#{@item.id}",
        cancel_url: "#{root_url}items"
      )
      @session_id = session.id
    end
  end

  def index
    @items = Item.search(params[:search]).includes(:limb, :user)
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to items_path
  end

  def destroy
    @item.destroy
    flash[:alert] = "Item Deleted"
    redirect_to items_path
  end

  private 

  def authorize_user
    unless (current_user.id == @item.user_id) || current_user.admin?
      flash[:alert] = "You are not authorized!"
      redirect_to items_path
    end
  end

  def set_item
    id = params[:id]
    @item = Item.find(id)
  end

  #Reads items, materials, limbs and types and assigns to instance variables
  def read_items

  end

  def read_limbs
    @limbs = Limb.all
  end

  def read_users
    @users = User.all
  end
  # Whitelist parameters for item instansiation
  def item_params
    params.require(:item).permit(:title, :description, :price, :material, :limb_id, :control_type, :picture)
  end

end
