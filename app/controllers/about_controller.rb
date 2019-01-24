# frozen_string_literal: true

class AboutController < ApplicationController
  def index; end

  def contacts; end

  def analytics;
    @blog_view = BlogView.all
  end

  def health_and_safety; end
end
