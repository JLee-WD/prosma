class ItemsController < ApplicationController
  before_action :read_items
  before_action :authenticate_user!

  def create
    # if user_signed_in?

    # else

    # end
    
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

  def read_items
    @items = Item.all
    @materials = Material.all
  end
end
