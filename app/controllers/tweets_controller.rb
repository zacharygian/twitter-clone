class TweetsController < ApplicationController
  before_action :set_tweet, only: [ :show, :delete ]


# User Stories
# The home page will list all tweets
  def index
    @user = current_user
    @tweets = Tweet.all
  end

  def show
    @user = current_user
    # authorize @tweet
  end

  def new
    @tweet = Tweet.new
    # authorize @tweet
    @user = current_user
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
      redirect_to tweets_path
    else
      render :new
    end
    # authorize @event
  end

  def destroy
    @tweet.destroy
    # authorize @tweet
    # redirect_to dashboard_path
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:user_id, :content, :created_at)
  end
# A user can create a new tweet no more than 140 characters
# A user can display his tweets or another user's tweets
# A user can delete a tweet
end
