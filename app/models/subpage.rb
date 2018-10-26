class Subpage < ApplicationRecord
  belongs_to :user
  belongs_to :page
  has_many :Articles
  has_one_attached :header_image
  has_one_attached :icon_image
  has_one_attached :album_image

end
