# frozen_string_literal: true

class AddPageNameToBlogView < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_views, :page_name, :string
  end
end
