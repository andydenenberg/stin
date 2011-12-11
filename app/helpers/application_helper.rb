module ApplicationHelper

  def show_logo
    params[:logo_size] = params[:logo_size] == "#{:thumb}" ? params[:logo_size] = "#{:tiny}" :  params[:logo_size] = "#{:thumb}"
    logo_css_class = params[:logo_size] == "#{:tiny}" ? "current asc" : "current desc"
    link_to 'Logo' , {:logo_size => params[:logo_size] }, {:class => logo_css_class} 
  end

  def sortable(column, title = nil)
    title ||= column.titleize # make it look pretty
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
    link_to title, { :sort => column, :direction => direction } , {:class => css_class}
  end
  
  
  def user_first_name(user_id)
    first_name = User.find(:all, :conditions => { :id  => user_id  }).first.first
	end

end
