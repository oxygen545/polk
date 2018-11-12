class Item < ApplicationRecord
  belongs_to :user
  has_one :photo
  has_one :style
  validates_presence_of :title
  validates_presence_of :heading
  validates_presence_of :body
end
