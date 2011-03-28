class BlogsController < ApplicationController
  before_filter :check_general_content, :only => [:show,:edit]
  before_filter :date_filter, :only => :show
  def index
    @posts = Blog.all
  end
  def new
    @post = Blog.new
  end
  def create
    @post = Blog.new(params[:blog])
    if @post.save
      redirect_to @post, :notice => "Post created successfully !"
    else
      flash[:alert] = "OOPS! something went wrong"
      render "new"
    end
  end
  def show
    @post = Blog.find(params[:id])
    @comments = Comment.all
    @comment = Comment.new
  end
  def update
    @post = Blog.find(params[:id])

    if @post.update_attributes(params[:blog])
      redirect_to blogs_path, :notice => 'Post was successfully updated.'
    else
      flash[:alert] = "OOPS! something went wrong"
      render "edit"
    end
  end
  def edit
    @post = Blog.find(params[:id])
  end
  def destroy
    @post = Blog.find(params[:id])
    @post.destroy
    redirect_to(blogs_path, :notice => "Post Deleted !!")
  end

  private
  def check_general_content
    begin
      Blog.general_stuff.find(params[:id])
      return true
    rescue
      redirect_to blogs_path, :notice => 'This is NOT a General Content !!!'
    end
  end
  def date_filter
    @p = Blog.find(params[:id])
    if( (Time.now.day-@p.updated_at.day) >= 1)
      redirect_to blogs_path, :notice => 'This Post has not been updated since 1 day. Click Edit to view the Post'
    end
  end
end
