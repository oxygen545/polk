class MessagesController < InheritedResources::Base
	def show
		redirect_to "/"
	end

	def delete
		if user_signed_in? 
			self.destroy
		else 
			redirect_to "/users/sign_in"
		end 
	end

  private

    def message_params
      params.require(:message).permit(:first_name, :last_name, :email, :subject, :body)
    end
end

