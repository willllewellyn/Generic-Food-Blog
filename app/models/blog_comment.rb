# frozen_string_literal: true

class BlogComment < ApplicationRecord
  belongs_to :blog
  validates :commenter, presence: true,
                        length: { minimum: 5, maximum: 50 }
  validates :body, presence: true,
                   length: { minimum: 5, maximum: 255 }
end
