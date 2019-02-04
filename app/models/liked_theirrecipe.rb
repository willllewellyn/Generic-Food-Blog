# frozen_string_literal: true

class LikedTheirrecipe < ApplicationRecord
  belongs_to :visitor
  belongs_to :theirrecipe
end
