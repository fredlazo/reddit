class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new

  end

  def create
    @post = Post.new
    @title = params[:post][:title]
    @body = params[:post][:body]
      if @post.save
        flash[:notice] = "Post was successfully saved."
        redirect_to @post
      else
        flash.now[:alert] = "There was an error. Please try again."
        render :new
      end
  end

  def edit
  end
end
