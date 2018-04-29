class TweetsController < ApplicationController
  before_action :set_tweet, only: [ :show, :destroy ]


  def index
    @user = current_user
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
      redirect_to tweets_path
    else
      flash[:alert] = "Tweet is too long (maximum is 140 characters), please try again!"
      redirect_to tweets_path
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
