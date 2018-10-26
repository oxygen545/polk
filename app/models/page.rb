class Page < ApplicationRecord
  belongs_to :user
  has_many :Subpages
  has_many :Articles
  has_one_attached :header_image
  has_one_attached :icon_image
  has_one_attached :album_image

end
