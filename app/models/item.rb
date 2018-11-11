class Item < ApplicationRecord
	belongs_to :user
	
	validates_presence_of :title
	validates_presence_of :heading
	validates_presence_of :body
	validates_presence_of :user_id
	validates_presence_of :photo_id
end
