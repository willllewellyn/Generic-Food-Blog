# frozen_string_literal: true

require 'faker'
Visitor.destroy_all
# Theirrecipe.destroy_all

30.times { Visitor.create(name: Faker::Crypto.unique.md5) }

theirrecipes = [
  'Acorn squash caramelized onion goat cheese pizza',
  'Bacon herb and cheese star bread',
  'Baked potatoes',
  'Baked scotch eggs',
  'Blueberry vanilla cake',
  'Caramel cookies',
  'Chocolate cake',
  'Chocolate macarons',
  'Devonshire honey cake',
  'Dinner rolls',
  'Injera',
  'Lembas bread',
  'Lemon pie',
  'Pancakes',
  'Russian honey cake',
  'Spicy italian pizza',
  'Spinache and artichoke dip stuffed garlic bread',
  'Welsh rarebit'
]

i = 0
15.times do
  Theirrecipe.create(name: theirrecipes[i])
  i += 1
end

100.times do
  visitor = Visitor.all[rand(0...30)]
  theirrecipe = Theirrecipe.all[rand(0...15)]
  if visitor.theirrecipes.include?(theirrecipe)
    next
  else
    visitor.theirrecipes << theirrecipe
  end
end
