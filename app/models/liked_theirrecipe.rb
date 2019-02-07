# frozen_string_literal: true

class LikedTheirrecipe < ApplicationRecord
  belongs_to :visitor, required: false
  belongs_to :theirrecipe, required: false
end
