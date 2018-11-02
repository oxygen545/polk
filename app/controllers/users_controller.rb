class UsersController < InheritedResources::Base

	def show
	end
  
  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end

