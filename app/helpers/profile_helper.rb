module ProfileHelper
	
	def show_photo(userp)
	  if userp.avatar.file?
		  image_tag userp.avatar.url(:thumb)
	  else
		  data = 'No Photo on file'
    end	
    
  end
  
end
