# frozen_string_literal: true

class RecipeComment < ApplicationRecord
  belongs_to :recipe
end
