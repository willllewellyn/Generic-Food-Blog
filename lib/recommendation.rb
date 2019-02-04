# frozen_string_literal: true

module Recommendation
  def recommend_recipes
    # recommend recipes to a visitor
    # find all other visitors, equivalent to .where('id != ?', self.id)
    other_visitors = self.class.all.where.not(id: id)
    # instantiate a new hash, set default value for any keys to 0
    recommended = Hash.new(0)
    # for each visitor of all other visitors
    other_visitors.each do |visitor|
      # find the recipes this visitor and another visitor both liked
      common_theirrecipes = visitor.theirrecipes & theirrecipes
      # calculate the weight (recommendation rating)
      weight = common_theirrecipes.size.to_f / visitor.theirrecipes.size
      # add the extra recipes the other visitor liked
      (visitor.theirrecipes - common_theirrecipes).each do |theirrecipe|
        # put the recipe along with the cumulative weight into hash
        recommended[theirrecipe] += weight
      end
    end
    # sort by weight in descending order
    sorted_recommended = recommended.sort_by { |_key, value| value }.reverse
  end
end
