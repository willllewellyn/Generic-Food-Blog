# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :recipe_comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5, maximum: 50 }
  validates :author, presence: true,
                     length: { minimum: 5, maximum: 50 }
  validates :ingredient, presence: true,
                         length: { minimum: 5, maximum: 5000 }
  validates :method, presence: true,
                     length: { minimum: 5, maximum: 5000 }
end
