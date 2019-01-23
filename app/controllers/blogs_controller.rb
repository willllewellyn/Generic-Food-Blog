# frozen_string_literal: true

class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
    record_views
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
  end

  def update
    @blog = Blog.find(params[:id])

    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    redirect_to blogs_path
  end

  def record_views
    session_id = session.id
    page_id = params[:id]
    page_name = @blog.title
    av = BlogView.new user_id: session_id, page_id: page_id, page_name: page_name
    av.save
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :text)
  end
end
