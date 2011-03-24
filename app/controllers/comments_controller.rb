class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @post = Blog.find(params[:blog_id])
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to @comment, :notice => "Commented !"
    else
      flash[:alert] = "OOPS! something went wrong"
      render "new"
    end
  end

  def show

  end

end
