class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
  @user = User.find_by(username: params[:username])
  if @user.present? && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end
  redirect_to guests_path
end

end
