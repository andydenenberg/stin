module ApplicationHelper

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
