class CreateArticleViews < ActiveRecord::Migration[5.2]
  def change
    create_table :article_views do |t|
      t.string :user_id
      t.integer :page_id

      t.timestamps
    end
  end
end
