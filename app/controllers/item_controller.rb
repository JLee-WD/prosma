class ItemController < ApplicationController
  before_action :read_items
  before_action :authenticate_user!

  def index

  end



  def create
    # if user_signed_in?

    # else

    # end
  end

  private 

  def read_items
    @items = Item.all
  end
end
