class ItemsController < ApplicationController
  before_action :read_items
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
  end

  def destroy
  end

  private 

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

  # def sanitize_item_params
  #   params["item"]["material"] = params["item"]["material"].to_i
  #   params["item"]["limb"] = params["item"]["limb"].to_i
  #   params["item"]["type"] = params["item"]["type"].to_i
  # end

end
