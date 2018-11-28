# frozen_string_literal: true

class ArticleComment < ApplicationRecord
  belongs_to :article
  validates :commenter, presence: true,
                        length: { minimum: 5, maximum: 50 }
  validates :body, presence: true,
                   length: { minimum: 5, maximum: 255 }
end
