# frozen_string_literal: true

class Blog < ApplicationRecord
  has_many :blog_comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
