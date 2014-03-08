module UploaderHelper
	def picture_store_path file_name, category_id
		File.join "public", "upload", "#{category_id}_#{file_name}"
	end		

	def picture_show_path file_name, category_id
		File.join "/upload", "#{category_id}_#{file_name}"
	end
end
