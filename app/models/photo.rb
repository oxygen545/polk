class Photo < ApplicationRecord
has_one_attached :image
validates_presence_of :caption
validates_presence_of :page_name
validates_presence_of :sequence
validates_presence_of :image
end