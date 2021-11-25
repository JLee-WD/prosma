class AdminsController < ApplicationController
  #Actions executed before other methods in controller
  before_action :read_users, :read_items

  #Index method for index view
  def index
  end

  private

  #Assigns all users to instance variable
  def read_users
    @users = User.all
  end

  #Assigns items to relevant instance variables by limb
  def read_items
    @items = Item.all
    @arms = Item.where(limb_id: 1)
    @legs = Item.where(limb_id: 2)
    @hands = Item.where(limb_id: 3)
    @feet = Item.where(limb_id: 4)
    @eyes = Item.where(limb_id: 5)
  end

  #Counts items in the relevant limb for the summary in the admin dash
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
