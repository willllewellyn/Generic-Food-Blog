# frozen_string_literal: true

class CreateTheirRecipesViews < ActiveRecord::Migration[5.2]
  def change
    create_table :their_recipes_views do |t|
      t.string :user_id
      t.integer :page_id
      t.string :page_name

      t.timestamps
    end
  end
end
