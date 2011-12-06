module ApplicationHelper

  def user_first_name(user_id)
    @user = User.find(:all, :conditions => { :id  => user_id  })
    first_name = ' '
    @user.each do |user|
      first_name = user.first
	  end
	  return first_name
	end

  def total_activity_time(org_id)
    if org_id == "all"
      activities = Activity.all
    else
      activities = Activity.find(:all, :conditions => { :org_id  => org_id })
    end
    total_hours = 0
    activities.each do |act|
      total_hours += ( act.endtime - act.starttime )/3600
    end
    return total_hours
  end

end
