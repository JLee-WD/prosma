class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable, 
         :trackable, 
         :timeoutable, timeout_in: 10.minutes

  has_many :items
  has_one :cart
  has_many :cart_items, through: :cart
end
