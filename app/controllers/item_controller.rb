class ItemController < ApplicationController
  before_action :read_items

  def index
  end

  private 

  def read_items
    @items = Item.all
  end
end
