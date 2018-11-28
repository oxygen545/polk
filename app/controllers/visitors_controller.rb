class VisitorsController < ApplicationController

def show
	if params[:id] == "contact"
		render "contact"
	end
	if params[:id] == "didyou"
		render "didyou"
	end
	if params[:id] == "slavery"
		render "slavery"
	end
	if params[:id] == "carousel"
		render "carousel"
	end

end

end

