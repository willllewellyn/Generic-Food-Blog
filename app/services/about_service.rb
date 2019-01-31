# frozen_string_literal: true

module AboutService
  class << self
    def get_article_views
      @articles_view = ArticleView.group(:page_name).count
      @articles_view = @articles_view.sort_by(&:last).reverse!
    end

    def get_blog_views
      @blog_view = BlogView.group(:page_name).count
      @blog_view = @blog_view.sort_by(&:last).reverse!
    end

    def get_recipe_views
      @recipes_view = RecipesView.group(:page_name).count
      @recipes_view = @recipes_view.sort_by(&:last).reverse!
    end

    def get_their_recipe_views
      @their_recipe_view = TheirRecipesView.group(:page_name).count
      @their_recipe_view = @their_recipe_view.sort_by(&:last).reverse!
    end

    def get_website_views
      @general_page_views = GeneralPageView.all
    end
  end
end
