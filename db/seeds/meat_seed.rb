# frozen_string_literal: true

require 'faker'
Visitor.destroy_all
# Theirrecipe.destroy_all
LikedTheirrecipe.destroy_all

30.times { Visitor.create(name: Faker::Crypto.unique.md5) }

theirrecipes = [
  'Bacon egg and spinach fried rice',
  'Bacon herb and cheese star bread',
  'Baked scotch eggs',
  'Beef stew in red wine sauce',
  'Beef stew with dumplings',
  'Beef tenderloin steaks with celert root gratin',
  'Bibimbap',
  'Braised lamb with herb scented jus',
  'Cassoulet with duck confit',
  'Chicken pesto pene with bacon and feta',
  'Cheese and ham omelette',
  'Chicken noodle soup',
  'Cream cheese and jalapeno stuffed chicken breast',
  'Garlic butter steak and potatoes',
  'Grilled chicken salad with cabbage',
  'Honey and mustard roast gammon',
  'Honey mustard chicken thighs with argula',
  'Honey tamarind baby back ribs',
  'Hunters sausage and sauerkraut stew',
  'Moroccan braised chicken',
  'Pull apart flauta ring',
  'Roast chicken with aromatic jus',
  'Roast leg of lamb',
  'Slow roasted pork loin with molasses and balsamic glaze',
  'Spicy italian pizza'
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
