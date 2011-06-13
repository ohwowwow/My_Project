class UsersController < ApplicationController
def show
     if request.post? and params[:user]
       @user = User.new(params[:user])
       user = User.find_by_username_and_pwd(@user.username, @user.pwd)
       if user
         session[:user_id] = user.id
         #flash[:notice] = "Hello! #{user.username}."
         redirect_to :action => :index, :controller => :dashboard
       else
         flash[:notice] = "Invalid name or password."
         @user.pwd = nil
       end
     end
end

def logout
     #flash[:notice] = "Bye " + @cur_user.username
  session[:user_id] = nil
  @cur_user = nil
  redirect_to :action => :index, :controller => :hub
end

def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    #flash[:notice] = "Welcome on board" + @user.username
    redirect_to :action => :index, :controller => :hub
  else
    render :action => "new"
  end
end

  def currentUser
    @currentUser = session[:user_id]
  end


end
