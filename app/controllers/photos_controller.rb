class PhotosController < InheritedResources::Base

def show
	@photo = Photo.find(params[:id])
end

def delete
	self.destroy
end
  private
    def photo_params
      params.require(:photo).permit(:page_name, :caption, :sequence, :image)
    end
end

