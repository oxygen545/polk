class PhotosController < InheritedResources::Base

	def delete
		photo.image.purge
	end

  private

    def photo_params
      params.require(:photo).permit(:page_name, :caption, :sequence, :image)
    end
end

