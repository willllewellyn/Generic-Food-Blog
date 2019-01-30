# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    GeneralPageService.record_views('About')
  end

  def contacts
    GeneralPageService.record_views('Contacts')
  end

  def analytics
    @articles_view = ArticleView.group(:page_name).count
    @articles_view = @articles_view.sort_by(&:last).reverse!

    @blog_view = BlogView.group(:page_name).count
    @blog_view = @blog_view.sort_by(&:last).reverse!

    @recipes_view = RecipesView.group(:page_name).count
    @recipes_view = @recipes_view.sort_by(&:last).reverse!

    @their_recipe_view = TheirRecipesView.group(:page_name).count
    @their_recipe_view = @their_recipe_view.sort_by(&:last).reverse!

    GeneralPageService.record_views('Analytics')
  end

  def health_and_safety
    GeneralPageService.record_views('Health and Safety')
  end
end
