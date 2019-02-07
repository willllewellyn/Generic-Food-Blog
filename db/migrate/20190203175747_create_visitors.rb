# frozen_string_literal: true

class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :name

      t.timestamps
    end
  end
end
