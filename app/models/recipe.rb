# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :recipe_comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :author, presence: true
  validates :ingredient, presence: true
  validates :method, presence: true
end
