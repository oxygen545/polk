class UsersController < InheritedResources::Base

	def index
		@eight_chan_banner_url = "https://sys.8ch.net/banners.php?b="
		@eight_chan_url="https://8ch.net/"
		@user = current_user
	end

	def show

	end
  
  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end

