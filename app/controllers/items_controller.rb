class ItemsController < InheritedResources::Base

  private

    def item_params
      params.require(:item).permit(:title, :heading, :body, :style_id, :user_id, :photo_id)
    end
end

