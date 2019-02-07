# frozen_string_literal: true

require './lib/recommendation.rb'
class Visitor < ApplicationRecord
  attr_accessor :Name

  has_many :liked_theirrecipes
  has_many :theirrecipes, through: :liked_theirrecipes
  include Recommendation
end
