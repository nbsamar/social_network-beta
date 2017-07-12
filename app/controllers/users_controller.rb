class UsersController < ApplicationController
	before_action :authenticate_user!

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def show
  	@user = current_user
  end
  def edit
    @user = current_user
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! You are now logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been logged out."
    redirect_to root_url
  end
end
