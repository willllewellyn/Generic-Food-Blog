# frozen_string_literal: true

class CreateRecipeComments < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_comments do |t|
      t.string :commenter
      t.text :body
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
