class BlogCommentsController < ApplicationController
  http_basic_authenticate_with name: 'dhh', password: 'secret', only: :destroy

  def create
    @blog = Blog.find(params[:blog_id])
    @article_comment = @blog.blog_comments.create(comment_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @blog_comment = @blog.blog_comments.find(params[:id])
    @blog_comment.destroy
    redirect_to blog_path(@blog)
  end

  private

  def comment_params
    params.require(:blog_comment).permit(:commenter, :body)
  end
end
