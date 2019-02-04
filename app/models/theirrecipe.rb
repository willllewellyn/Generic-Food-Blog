# frozen_string_literal: true

class Theirrecipe < ApplicationRecord
  has_many :liked_theirrecipes
  has_many :visitors, through: :liked_theirrecipes
end
