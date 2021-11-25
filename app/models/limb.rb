class Limb < ApplicationRecord
  #Limb active record associations
  has_many :items

  #Validation for Limbs
  validates :name, presence: true
end
