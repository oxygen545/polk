class ItemsController < InheritedResources::Base

	def show
		@item = Item.find(params[:id])
	end
	
	private

	def item_params
		params.require(:item).permit(:user_id, :title, :heading, :body, :photo_id)
	end

end

