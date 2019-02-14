# frozen_string_literal: true

require 'faker'
Visitor.destroy_all
# Theirrecipe.destroy_all

30.times { Visitor.create(name: Faker::Crypto.unique.md5) }

theirrecipes = [
  'Bouillabaisse',
  'Creamy scallop fettuccine with lemon and capers',
  'Firecracker shrimp',
  'Grilled oysters',
  'Mussels and clams in a spicy tomato broth',
  'Paella',
  'Pan roast salmon with tomato viniagrette',
  'Seared scallops in a cream lemon caper sauce',
  'Trout with garlic lemon butter herb sauce',
  'Beef stew in red wine sauce',
  'Beef stew with dumplings',
  'Chicken noodle soup',
  'Creamy tomato soup',
  'Hunters sausage and sauerkraut stew',
  'Mussels and clams in a spicy tomato broth'
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
