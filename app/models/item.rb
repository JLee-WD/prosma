class Item < ApplicationRecord
  belongs_to :user
  has_one :material
  has_one :type
  has_one :limb

end
