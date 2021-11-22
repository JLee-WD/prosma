class User < ApplicationRecord
  has_many :items
  has_one :cart
  has_many :cart_items, through: :cart

  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable, 
         :trackable, 
         :timeoutable, timeout_in: 10.minutes

  enum role: {user: 1, seller: 2, admin: 3}
end
