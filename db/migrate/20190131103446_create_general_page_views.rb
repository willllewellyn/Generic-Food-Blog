class CreateGeneralPageViews < ActiveRecord::Migration[5.2]
  def change
    create_table :general_page_views do |t|
      t.string :page_name
      t.string :session_id

      t.timestamps
    end
  end
end
