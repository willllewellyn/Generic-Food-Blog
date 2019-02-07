# frozen_string_literal: true

class ChangeVisitorIdToBeStringInLikedRecipes < ActiveRecord::Migration[5.2]
  def up
    change_column :liked_theirrecipes, :visitor_id, :string
  end

  def down
    change_column :liked_theirrecipes, :visitor_id, :integer
  end
end
