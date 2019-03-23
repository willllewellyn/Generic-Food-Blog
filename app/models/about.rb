# frozen_string_literal: true

class About < ActiveRecord::Base
  has_many :general_page_views
end
