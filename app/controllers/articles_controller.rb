# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.paginate(page: params[:page], per_page: 10).order(:title)
  end

  def show
    @article = Article.find(params[:id])
    session_id = session.id
    page_id = params[:id]
    page_name = @article.title
    ArticlesService.record_views(session_id, page_id, page_name)
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

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
