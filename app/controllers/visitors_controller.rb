class VisitorsController < ApplicationController
	def features
		@user = current_user
	end

	def show
		@user = current_user;
	end

	def index
		@user = current_user;
	end

end
