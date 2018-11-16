# frozen_string_literal: true

class BlogComment < ApplicationRecord
  belongs_to :blog
end
