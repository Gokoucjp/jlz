class InfoController < ApplicationController
	def edit
		@info = Info.first
	end

	def update
		@info = Info.find(params[:id])
		if @info.update_attributes(params[:info])
			redirect_to categories_url
		else
			render action: 'edit'
		end
	end
end
