class Item < ApplicationRecord
  #Item active record associations
  belongs_to :user
  has_one_attached :picture
  belongs_to :limb
  has_many :cart_items
  has_many :carts, through: :cart_items

  #Scopes for search and filter queries
  scope :search_by_title, -> (title) { where("title ILIKE ?", "%#{title}%")}
  scope :filter_by_limb, -> (id) {where(limb_id: id)}

  #Search method with chained scopes to return a filtered or searched items variable
  def self.search(search_hash)
    if search_hash
      Item.search_by_title(search_hash["title"]).filter_by_limb(search_hash["limb_id"])
    else
      Item.all
    end
  end

  #Validation for Items
  validates_presence_of :title, :control_type, :material, :user_id, :limb_id
  validates :description, length: { maximum: 200, exceeded_char_limit: "200 character limit"}
  validates :price, presence: true, numericality: { only_integer: true }
  validates :quantity, presence: true, numericality: { only_integer: true }
end
