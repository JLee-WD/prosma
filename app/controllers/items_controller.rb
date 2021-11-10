class ItemsController < ApplicationController
  before_action :read_items
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def create
    # sanitize_item_params()
    # if user_signed_in?

    # else

    # end
    @item = Item.create(item_params)

    redirect_to items_path
  end

  def new
    @item = Item.new
  end

  def index
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to items_path
  end

  def destroy
  end

  private 

  def set_item
    id = params[:id]
    @item = Item.find(id)
  end

  #Reads items, materials, limbs and types and assigns to instance variables
  def read_items
    @items = Item.all
    @materials = Material.all
    @limbs = Limb.all
    @types = Type.all
  end

  # Whitelist parameters for item instansiation
  def item_params
    params.require(:item).permit(:title, :description, :price, :material_id, :limb_id, :type_id)
  end

end
