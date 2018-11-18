class UsersController < InheritedResources::Base

	def index
		@eight_chan_banner_url = "https://sys.8ch.net/banners.php?b="
		@eight_chan_url="https://8ch.net/"

	end

  def example
  end

  def show
      @user = User.find(params[:id])
  end

  def delete
    if user_signed_in? 
      self.destroy
    else 
      redirect_to "/users/sign_in"
    end 
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end

