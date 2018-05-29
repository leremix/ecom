class UsersController < ApplicationController

  layout "application"


  def show
    @user = User.find(params[:id])
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
  	if @user.update(user_params)
  	redirect_to user_path(@user)
  	else
  	render 'Edit'
    end
  end


  private

  def set_user
  @user = User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:user_id)
  end

end
