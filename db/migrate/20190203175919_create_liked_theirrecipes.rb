# frozen_string_literal: true

class CreateLikedTheirrecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :liked_theirrecipes do |t|
      t.integer :visitor_id
      t.integer :theirrecipe_id

      t.timestamps
    end
  end
end
