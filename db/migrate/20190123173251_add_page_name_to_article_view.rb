class AddPageNameToArticleView < ActiveRecord::Migration[5.2]
  def change
    add_column :article_views, :page_name, :string
  end
end
