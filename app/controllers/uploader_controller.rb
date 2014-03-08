class UploaderController < ApplicationController
	def new

	end

	def upload
		uploaded_picture = params[:picture]

		if params[:name].empty?
			name = uploaded_picture.original_filename
		else
			name = params[:name]
		end
		category_id = params[:category][:id]
		dir = picture_store_path uploaded_picture.original_filename, category_id

		File.open(dir, 'wb') do |file|
			file.write(uploaded_picture.read)
		end

		# store in database
		path = picture_show_path uploaded_picture.original_filename, category_id
		picture = Picture.new(category: category_id, name: name, path: path)
		if picture.save
			redirect_to picture
		end
	end
end
