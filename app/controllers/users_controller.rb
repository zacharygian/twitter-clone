class UsersController < ApplicationController
  before_action :find_user, except: [ :index ]

  def index
    @user = current_user
    @users = User.all
  end

  def show
  end

  def follow
    current_user.follow(@user)
    redirect_to user_path (@user)
  end

  def unfollow
    current_user.stop_following(@user)
    redirect_to user_path (@user)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
