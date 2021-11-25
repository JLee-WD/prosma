class User < ApplicationRecord
  #User active record associations
  has_many :items
  has_one :cart
  has_many :cart_items, through: :cart

  #Devise modules
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable, 
         :trackable, 
         :timeoutable, timeout_in: 10.minutes

  #Enum attriubte to map user roles to integers 
  enum role: {user: 1, seller: 2, admin: 3}

  #Validation for Users
  validates_presence_of :email, :role, :first_name, :last_name
end
