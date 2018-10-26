class Article < ApplicationRecord
  belongs_to :user
  belongs_to :subpage
  has_one_attached :header_image
  has_one_attached :icon_image
  has_one_attached :album_image
end
