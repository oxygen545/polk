module VisitorsHelper
	def get_images(page_name="cover")
		get_images = Photo.where(page_name: page_name)
	end
end
