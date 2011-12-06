module ActivitiesHelper

  def organization_name(org_id)
    theorg = Org.find(:all, :conditions => { :id  => org_id  })
    name = ' '
    theorg.each do |org|
      name = org.organization
    end
    return name
  end

  def total_time
  #  activities = Activity.find(:all, :conditions => { :org_id  => org.id })
    activities = Activity.all
    total_hours = 0
    activities.each do |act|
      total_hours += ( act.endtime - act.starttime )/3600
    end
    return total_hours
  end

  def impact_choices
    impact = Array.new
    impact = [['great', 5],['good', 4],['somewhat', 3],['poor', 2],['weak', 1]]
    return impact
  end
  
  def reward_choices
    reward = Array.new
    reward = [["Unforgettable", 5 ],["Great Feeling", 4],["Was OK", 3 ],["Not worthwhile" , 2 ], ["Like Mick Jagger", 1 ]]
	  return reward
	end
    
  def users_for_select
    @user = Array.new
    @user = [ 'All' ]
    @user += User.all.collect { |u| [u.first, u.id] }
    return @user
  end

  def orgs_for_select # this is used for display purposes
    @org = [ 'All']
    @org += Org.all.collect { |o| [o.organization, o.id] } 
    return @org
  end
  
  def orgs_for_form	
      @org = [ ]
      @org += Org.all.collect { |o| [o.organization, o.id] } 
      return @org
    end
    	
end

