class CartItem < ApplicationRecord
  #Cart item active record associations
  belongs_to :cart
  belongs_to :item
  has_one :user, through: :cart

  #Validation for Cart items
  validates :cart_id, presence: true
  validates :item_id, presence: true
end
