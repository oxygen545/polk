class VisitorsController < ApplicationController
	
	def jumbotron
		render "visitors/jumbotron"
	end
	
	def album
		render "visitors/album"
	end

	def carousel
		render "visitors/carousel"
	end

	def cover
		render "visitors/cover"
	end

  private

    def visitor_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
