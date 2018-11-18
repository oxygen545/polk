class ItemsController < InheritedResources::Base

	def new
		if user_signed_in? 
		else 
			redirect_to "/users/sign_in"
		end 
	end

	def show
		if user_signed_in?
			@item = Item.find(params[:id])
		else 
			redirect_to "/users/sign_in"
		end 
	end

	def edit
		if user_signed_in? 
		else 
			redirect_to "/users/sign_in"
		end 
	end
	
	def index
		if user_signed_in? 
		else 
			redirect_to "/users/sign_in"
		end 
	end

	def delete
		if user_signed_in? 
			self.destroy
		else 
			redirect_to "/users/sign_in"
		end 
	end

  private

    def item_params
      params.require(:item).permit(:title, :heading, :body, :style_id, :user_id, :photo_id)
    end
end

