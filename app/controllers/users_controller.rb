class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:webuser).permit(:name, :email, :password, :password_confirmation)
    end
end

