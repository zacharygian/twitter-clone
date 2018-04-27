class CommentsController < ApplicationController
  before_action :set_tweet, only: [ :index, :create, :destroy ]
  before_action :set_comment, only: [ :destroy ]

  def index
    @user = current_user
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.tweet = @tweet
    @comment.user = current_user

    if @comment.save
      redirect_to tweet_comments_path
    else
      flash[:alert] = "Comment is too long (maximum is 140 characters), please try again!"
      redirect_to tweet_comments_path
    end
  end

  def destroy
    @comment.destroy
    flash[:alert] = "Your comment was deleted"
    redirect_to tweet_comments_path
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    user_id = current_user.id
    params.require(:comment).permit(:tweet_id, :text)
  end
end
