class ActivitiesController < ApplicationController

  def sorted
      user = params[:user]
      organization = params[:org]
      puts user
      if user == 'All' && organization == 'All'  # both All
        @activities = Activity.all
      else        
            if user == 'All'   # User All       
              @activities = Activity.where(:org_id => organization ).order('starttime')
            else
                  if organization == 'All'  # Org All
                    @activities = Activity.where(:user_id => user).order('starttime')
                  end
                  @activities = Activity.where(:org_id => organization, :user_id => user ).order('starttime')
            end
      end  

    @orgs = Org.all
    @users = User.all
    render :partial => 'index', :layout => false

  end

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.paginate :page => params[:page], :per_page => 10
    @orgs = Org.all
    @users = User.all
   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activities }
    end
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @activity = Activity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity }
    end
  end

  # GET /activities/new
  # GET /activities/new.json
  def new
    @activity = Activity.new
    @orgs = Org.all
    @activity.user_id = current_user.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity }
    end
  end

  # GET /activities/1/edit
  def edit
    @activity = Activity.find(params[:id])
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(params[:activity])

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render json: @activity, status: :created, location: @activity }
      else
        format.html { render action: "new" }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activities/1
  # PUT /activities/1.json
  def update
    @activity = Activity.find(params[:id])

    respond_to do |format|
      if @activity.update_attributes(params[:activity])
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to activities_url }
      format.json { head :ok }
    end
  end
end
