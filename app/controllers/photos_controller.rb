class PhotosController < InheritedResources::Base

  private

    def photo_params
      params.require(:photo).permit(:page_name, :caption, :sequence)
    end
end

