# START:header  
class ProfileController < ApplicationController
  
  before_filter :authenticate_user!
# END:header

def list
  @users = User.paginate :page => params[:page], :per_page => 3 
  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @users }
  end
end

def index
#  @users = Donor.paginate :page => params[:page], :per_page => 10 
 @users = User.all
  
  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @users }
  end
end


# START:show
  # GET /profile
  def show
    @user = current_user
  end
# END:show

# START:edit
  def edit
    @user = current_user
  end
# END:edit

# START:update
  # PUT /profile
  def update
    @user = current_user
    if @user.update_attributes(params[:user])

      puts 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb'
      puts params[:user]
      puts @user
      
      puts @user.first
      puts @user.last
      puts 'in the middle'
      puts @user.comments
      
#      @user.each do |user|
#        puts user.email
#        puts user.last
#        puts user.comments
#      end
      puts 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb'
      
      redirect_to(profile_path, :notice => 'Your profile information was successfully updated.') 
    else
      render :action => 'edit'
    end    
  end
# END:update

end
