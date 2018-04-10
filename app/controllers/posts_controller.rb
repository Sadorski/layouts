class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def create
    Post.create(title:params[:title], content: params[:content], user_id: params[:author])
    redirect_to "/posts/index"
  end
end
