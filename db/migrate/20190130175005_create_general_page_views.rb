# frozen_string_literal: true

class CreateGeneralPageViews < ActiveRecord::Migration[5.2]
  def change
    create_table :general_page_views do |t|
      t.string :page_name
      t.integer :count

      t.timestamps
    end
  end
end
