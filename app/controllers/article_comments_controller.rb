# frozen_string_literal: true

class ArticleCommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @article_comment = @article.article_comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @article_comment = @article.article_comments.find(params[:id])
    @article_comment.destroy
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:article_comment).permit(:commenter, :body)
  end
end
