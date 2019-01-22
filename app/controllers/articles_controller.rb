# frozen_string_literal: true

class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    record_views
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def record_views
    sessionId = session.id
    pageId = params[:id]
    av = ArticleView.new user_id: sessionId, page_id: pageId
    av.save
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
