class CreateTheirRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :their_recipes do |t|
      t.integer :page_id
      t.string :page_name

      t.timestamps
    end
  end
end
