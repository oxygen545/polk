class VisitorsController < ApplicationController

	def cover
	end

	def carousel
	end

	def pricing
	end

	def jumbotron
	end
	
	def album
	end


  private

    def visitor_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
