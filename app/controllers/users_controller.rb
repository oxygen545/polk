class UsersController < InheritedResources::Base

	def delete
			user.purge
	end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end

