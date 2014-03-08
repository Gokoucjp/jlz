class HomeController < ApplicationController
	def index
	end

	def show
		@pictures = Picture.find_all_by_category(params[:id])
		@current_category = Category.find(params[:id])
	end
end
