class ItemsController < InheritedResources::Base
	def show
		@item = Item.find(params[:id])
	end
	
  private

    def item_params
      params.require(:item).permit(:title, :heading, :body, :style_id, :user_id, :photo_id)
    end
end

