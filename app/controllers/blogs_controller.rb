class BlogsController < ApplicationController
  before_action :set_params, only:[:edit, :destroy]

  def index
    @blog = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @blog.destroy
    redirect_to root_path
  end

  private

  def set_params
    @blog = Blog.find_by(id: params[:id])
  end

  def blog_params
    params[:blog].permit(:title, :content)
  end

end
