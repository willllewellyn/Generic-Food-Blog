# frozen_string_literal: true

class RecipeComment < ApplicationRecord
  belongs_to :recipe
  validates :commenter, presence: true,
                    length: { minimum: 5, maximum: 50 }
  validates :body, presence: true,
                    length: { minimum: 5, maximum: 255 }
end
