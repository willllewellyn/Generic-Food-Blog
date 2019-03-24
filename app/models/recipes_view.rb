# frozen_string_literal: true

class RecipesView < ApplicationRecord
  attr_accessor :UserId, :PageId, :PageName

  def self.to_csv
    attributes = %w[id user_id page_id page_name created_at updated_at]

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |their_recipes_top10|
        csv << attributes.map { |attr| their_recipes_top10.send(attr) }
      end
    end
  end
end
