# frozen_string_literal: true

class AboutController < ApplicationController
  def index; end

  def contacts; end

  def analytics
    # @blog_view = BlogView.all
    # @blog_view = BlogView.group([:id, :page_id])
    @blog_view = BlogView.group(:page_name).count
  end

  def health_and_safety; end
end
