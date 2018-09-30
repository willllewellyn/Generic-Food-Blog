# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :author
      t.date :date
      t.text :ingredient
      t.text :method

      t.timestamps
    end
  end
end
