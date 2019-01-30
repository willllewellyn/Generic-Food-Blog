# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    GeneralPageService.record_views('About')
  end

  def contacts
    GeneralPageService.record_views('Contacts')
  end

  def analytics
    @articles_view = AboutService.get_article_views

    @blog_view = AboutService.get_blog_views

    @recipes_view = AboutService.get_recipe_views

    @their_recipe_view = AboutService.get_their_recipe_views

    GeneralPageService.record_views('Analytics')
  end

  def health_and_safety
    GeneralPageService.record_views('Health and Safety')
  end
end
