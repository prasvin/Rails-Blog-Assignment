class CommentsController < ApplicationController
  def new
    @comment = blog.Comment.new
  end
  def create
    @post = Blog.find(params[:blog_id])
    @comment = @post.comments.create(params[:comment])
    if @comment.save
      redirect_to @post, :notice => "Commented !"
    else
      flash[:alert] = "OOPS!! something went wrong"
      render "new"
    end
  end
  def destroy
    @post = Blog.find(params[:blog_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to( @post, :notice => "Post Deleted !!")
  end
end
