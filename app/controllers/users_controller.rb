class UsersController < ApplicationController
  def autologin
    user = User.find params[:id]
    auto_login user if user
    redirect_to request.referrer || root_path
  end

  def show
    @user = User.find params[:id]
    @comments = @user.comments.with_state([:draft, :published]).nested_set
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
end
