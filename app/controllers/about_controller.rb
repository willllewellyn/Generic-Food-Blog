# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    @abouts = AboutService.fetch_website_views
    @csv_type = params[:type]

    respond_to do |format|
      format.html
      format.csv do
        if @csv_type == '1'
          @website_hits = AboutService.fetch_website_views

          send_data @website_hits.to_csv,
                    filename: "WebsiteHits-#{Date.today}.csv"
        elsif @csv_type == '2'
          @blogs_top10 = AboutService.fetch_blog_views

          send_data @blogs_top10.to_csv,
                    filename: "Blogs-Top-10-#{Date.today}.csv"
        elsif @csv_type == '3'
          @recipes_top10 = AboutService.fetch_recipe_views

          send_data @recipes_top10.to_csv,
                    filename: "Recipes-Top-10-#{Date.today}.csv"
        elsif @csv_type == '4'
          @articles_top10 = AboutService.fetch_article_views

          send_data @articles_top10.to_csv,
                    filename: "Articles-Top-10-#{Date.today}.csv"
        elsif @csv_type == '5'
          @their_recipes_top10 = AboutService.fetch_their_recipe_views

          send_data @their_recipes_top10.to_csv,
                    filename: "Their_Recipes-Top-10-#{Date.today}.csv"
        else
          route to: 'about#analytics'
        end
      end
    end

    session_id = session.id
    GeneralPageService.record_views(session_id, 'About')
  end

  def show; end

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
