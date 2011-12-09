class OrgsController < ApplicationController
  # GET /orgs
  # GET /orgs.json

  helper_method :sort_column, :sort_direction

  def index
    @orgs = Org.order(sort_column + " " + sort_direction).paginate :page => params[:page], :per_page => 10, :order => 'organization'
    @users = User.all
#    @sum_value = Donation.sum("value")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orgs }
    end
  end

  # GET /orgs/1
  # GET /orgs/1.json
  def show
    @org = Org.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @org }
    end
  end

  # GET /orgs/new
  # GET /orgs/new.json
  def new
    @org = Org.new
#    @org.donor_id = 1
#     @activity = Activity.find(:all, :conditions => { :name  => 'clean' })

@org.user_id = current_user.id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @org }
    end
  end

  # GET /orgs/1/edit
  def edit
    @org = Org.find(params[:id])
  end

  # POST /orgs
  # POST /orgs.json
  def create
    @org = Org.new(params[:org])

    respond_to do |format|
      if @org.save
        format.html { redirect_to @org, notice: 'Org was successfully created.' }
        format.json { render json: @org, status: :created, location: @org }
      else
        format.html { render action: "new" }
        format.json { render json: @org.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orgs/1
  # PUT /orgs/1.json
  def update
    @org = Org.find(params[:id])

    respond_to do |format|
      if @org.update_attributes(params[:org])
        format.html { redirect_to @org, notice: 'Org was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @org.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgs/1
  # DELETE /orgs/1.json
  def destroy
    @org = Org.find(params[:id])
    a = Activity.first
      if a
        puts "There are activities associated with #{@org.organization} - it cannot be deleted"
      else
        puts "The org has no activities"
        @org.destroy
      end

    respond_to do |format|
      format.html { redirect_to orgs_url }
      format.json { head :ok }
    end
  end

  private
  
  def sort_column
    Org.column_names.include?(params[:sort]) ? params[:sort] : "organization"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end

  
