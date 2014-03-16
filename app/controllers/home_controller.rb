class HomeController < ApplicationController
	def index
	end

	def show
		#@pictures = Picture.find_all_by_category(params[:id])
    @pictures = Picture.where(category: params[:id]).order('created_at DESC')
                        .paginate(page: params[:page], per_page: 12)
		@current_category = Category.find(params[:id])
	end
end
