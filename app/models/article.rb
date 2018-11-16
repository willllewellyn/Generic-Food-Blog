# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :article_comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5, maximum: 50 }
  validates :text, presence: true,
                   length: { minimum: 5, maximum: 5000 }
end
