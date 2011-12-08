module ApplicationHelper

  def user_first_name(user_id)
    first_name = User.find(:all, :conditions => { :id  => user_id  }).first.first
	end

end
