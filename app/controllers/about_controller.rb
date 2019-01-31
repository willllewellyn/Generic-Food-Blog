# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    session_id = session.id
    GeneralPageService.record_views(session_id, 'About')
  end

  def contacts
    session_id = session.id
    GeneralPageService.record_views(session_id, 'Contacts')
  end

  def analytics
    @articles_view = AboutService.fetch_article_views

    @blog_view = AboutService.fetch_blog_views

    @recipes_view = AboutService.fetch_recipe_views

    @their_recipe_view = AboutService.fetch_their_recipe_views

    @general_page_views = AboutService.fetch_website_views

    session_id = session.id
    GeneralPageService.record_views(session_id, 'Analytics')
  end

  def health_and_safety
    session_id = session.id
    GeneralPageService.record_views(session_id, 'Health and Safety')
  end
end
