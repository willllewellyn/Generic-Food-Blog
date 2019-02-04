# frozen_string_literal: true

class CreateTheirrecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :theirrecipes do |t|
      t.string :name

      t.timestamps
    end
  end
end
