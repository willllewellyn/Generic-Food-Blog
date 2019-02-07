# frozen_string_literal: true

module Recommendation
  def recommend_recipes
    other_visitors = self.class.all.where.not(id: id)
    recommended = Hash.new(0)

    other_visitors.each do |visitor|
      common_theirrecipes = visitor.theirrecipes & theirrecipes
      weight = common_theirrecipes.size.to_f / visitor.theirrecipes.size

      (visitor.theirrecipes - common_theirrecipes).each do |theirrecipe|
        recommended[theirrecipe] += weight
      end
    end
    sorted_recommended = recommended.sort_by { |_key, value| value }.reverse
  end
end
