class UsersController < ApplicationController

def index
    @users = User.all
 end

def new
# default: render 'new' template
end


def create
 id = params[:user][:user_id]
 if User.exists?(:user_id => id)
  flash[:notice] = "Sorry. This user-id is already taken. Try again."
  redirect_to new_user_path   
 else  
  @userm = User.user_create!(params[:user])
  @user = User.create!(@userm)
  flash[:notice] = "Welcome #{@user.user_id}. Your account has been created"
  redirect_to login_path
 end
end
#@user = User.create!(params[:user])
end

