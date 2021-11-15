class Item < ApplicationRecord
  belongs_to :user
  has_one :material
  has_one :type
  has_one :limb
  has_one_attached :picture

end
