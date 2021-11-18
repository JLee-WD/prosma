class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  has_many :cart_items
  has_many :carts

end
