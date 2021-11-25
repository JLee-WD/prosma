class Cart < ApplicationRecord
  #Cart active record associations
  has_many :cart_items
  has_many :items, through: :cart_items
  belongs_to :user

  #Validation for Carts
  validates :user_id, presence: true
end
