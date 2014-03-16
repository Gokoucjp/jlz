module UploaderHelper
	def picture_store_path file_name, category_id
		File.join "public", "upload", "#{category_id}_#{file_name}"
	end		

	def picture_show_path file_name, category_id
		File.join "/upload", "#{category_id}_#{file_name}"
	end

	def delete_picture show_path
		absolute_path = "#{Rails.root}/public#{show_path}"
		if File.exist? absolute_path
			File.delete(absolute_path)
		end
	end
end
