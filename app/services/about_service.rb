# frozen_string_literal: true

module AboutService
  class << self
    def fetch_article_views
      @articles_view = ArticleView.group(:page_name).count
      @articles_view = @articles_view.sort_by(&:last).reverse!
    end

    def fetch_blog_views
      @blog_view = BlogView.group(:page_name).count
      @blog_view = @blog_view.sort_by(&:last).reverse!
    end

    def fetch_recipe_views
      @recipes_view = RecipesView.group(:page_name).count
      @recipes_view = @recipes_view.sort_by(&:last).reverse!
    end

    def fetch_their_recipe_views
      @their_recipe_view = TheirRecipesView.group(:page_name).count
      @their_recipe_view = @their_recipe_view.sort_by(&:last).reverse!
    end

    def fetch_website_views
      @general_page_views = GeneralPageView.all
    end
  end
end
