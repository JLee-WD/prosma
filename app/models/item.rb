class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  belongs_to :limb
  has_many :cart_items
  has_many :carts, through :cart_items

  scope :search_by_title, -> (title) { where("title ILIKE ?", "%#{title}%")}
  scope :filter_by_limb, -> (id) {where(limb_id: id)}

  def self.search(search_hash)
    if search_hash
      Item.search_by_title(search_hash["title"]).filter_by_limb(search_hash["limb_id"])
    else
      Item.all
    end
  end
end
