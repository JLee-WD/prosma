class ItemsController < ApplicationController
  #Actions executed before other methods in controller
  before_action :read_users, :read_limbs
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authorize_seller, only: [:new, :create]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :authorize_user, only: [:edit, :update, :destroy]

  #New method for item instansiation
  def new
    @item = Item.new
  end

  #Create method for an item with an authentication check
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

  #Show method including Stripe parameters used for payments
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

  #Index method for item, assigning searched and filtered items to an instance variable
  def index
    @items = Item.search(params[:search]).includes(:limb, :user)
  end

  #Edit method for item
  def edit
  end

  #Update method for item
  def update
    @item.update(item_params)
    redirect_to items_path
  end

  #Destroy method enabling deletion of item
  def destroy
    @item.destroy
    flash[:alert] = "Item Deleted"
    redirect_to items_path
  end

  private 

  #Authorize seller method to check if user id is the same as item id OR admin
  def authorize_user
    unless (current_user.id == @item.user_id) || current_user.admin?
      flash[:alert] = "You are not authorized!"
      redirect_to items_path
    end
  end

  #Authorize seller method to check if user is seller or admin
  def authorize_seller
    unless current_user.seller? || current_user.admin?
      flash[:alert] = "You are not authorized!"
      redirect_to items_path
    end
  end

  #Sets item to instance variable for use, from parameters
  def set_item
    id = params[:id]
    @item = Item.find(id)
  end

  #Sets all limbs to instance variable for use
  def read_limbs
    @limbs = Limb.all
  end

  #Sets all users to instance variable for use
  def read_users
    @users = User.all
  end

  #Whitelist parameters for item instansiation
  def item_params
    params.require(:item).permit(:title, :description, :price, :material, :limb_id, :control_type, :picture)
  end
end
