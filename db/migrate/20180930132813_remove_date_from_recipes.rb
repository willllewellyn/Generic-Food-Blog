# frozen_string_literal: true

class RemoveDateFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :date, :date
  end
end
