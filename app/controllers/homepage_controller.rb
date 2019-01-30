# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    GeneralPageService.record_views('Homepage')
  end
end
