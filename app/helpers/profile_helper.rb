module ProfileHelper
  	
	def show_photo(userp,size)
	  if userp.avatar.file?
		  image_tag userp.avatar.url(size)
	  else
		  data = 'No Photo on file'
    end	
    
  end
  
end
