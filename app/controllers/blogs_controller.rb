# frozen_string_literal: true

class BlogsController < ApplicationController
  def index
    @blogs = Blog.paginate(page: params[:page], per_page: 10).order(:title)
    session_id = session.id
    GeneralPageService.record_views(session_id, 'Blogs')
  end

  def show
    @blog = Blog.find(params[:id])
    session_id = session.id
    page_id = params[:id]
    page_name = @blog.title
    BlogsService.record_views(session_id, page_id, page_name)
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

  private

  def blog_params
    params.require(:blog).permit(:title, :text)
  end
end
