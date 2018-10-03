# frozen_string_literal: true

class ArticleComment < ApplicationRecord
  belongs_to :article
end
