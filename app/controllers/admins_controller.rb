class AdminsController < ApplicationController
  before_action :read_users, :read_items

  def index
  end

  private

  def read_users
    @users = User.all
  end

  def read_items
    @items = Item.all
    @arms = Item.where(limb_id: 1)
    @legs = Item.where(limb_id: 2)
    @hands = Item.where(limb_id: 3)
    @feet = Item.where(limb_id: 4)
    @eyes = Item.where(limb_id: 5)
  end

  def read_category(array, limb)
    counter = 0
    array.each do |item|
      if item.limb_id == limb
        counter += 1
      end
    end
    return counter
  end
end
