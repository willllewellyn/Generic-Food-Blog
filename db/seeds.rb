# frozen_string_literal: true

require 'faker'
# Visitor.destroy_all
# Theirrecipe.destroy_all

30.times { Visitor.create(name: Faker::Crypto.unique.md5) }

theirrecipes = ['Acorn squash caramelized onion goat cheese pizza',
                'Asparagus avocado sushi',
                'Bacon egg and spinach fried rice',
                'Bacon herb and cheese star bread',
                'Baked potatoes',
                'Baked scotch eggs',
                'Beef stew in red wine sauce',
                'Beef stew with dumplings',
                'Beef tenderloin steaks with celert root gratin',
                'Bibimbap',
                'Blueberry vanilla cake',
                'Bouillabaisse',
                'Braised lamb with herb scented jus',
                'Caramel cookies',
                'Caramelised onions',
                'Cassoulet with duck confit',
                'Chicken pesto pene with bacon and feta',
                'Cheese and ham omelette',
                'Chicken noodle soup',
                'Chocolate cake',
                'Chocolate macarons',
                'Cream cheese and jalapeno stuffed chicken breast',
                'Creamy scallop fettuccine with lemon and capers',
                'Creamy tomato soup',
                'Devonshire honey cake',
                'Dinner rolls',
                'Firecracker shrimp',
                'Fruit clafoutis',
                'Garlic butter steak and potatoes',
                'Grilled chicken salad with cabbage',
                'Grilled oysters',
                'Honey and mustard roast gammon',
                'Honey mustard chicken thighs with argula',
                'Honey tamarind baby back ribs',
                'Hunters sausage and sauerkraut stew',
                'Injera',
                'Lembas bread',
                'Lemon pie',
                'Mars bar cake',
                'Marshmallow crispie bars',
                'Moroccan braised chicken',
                'Mussels and clams in a spicy tomato broth',
                'Over the top mushroom quiche',
                'Paella',
                'Pan roast salmon with tomato viniagrette',
                'Pancakes',
                'Parmesan and garlic crusted potato wedges',
                'Potato gnocchi with mushroom ragu',
                'Potato wedges',
                'Pull apart flauta ring',
                'Roast chicken with aromatic jus',
                'Roast leg of lamb',
                'Russian honey cake',
                'Samoa cookie inspired iced coffee',
                'Seared scallops in a cream lemon caper sauce',
                'Slow roasted pork loin with molasses and balsamic glaze',
                'Spicy italian pizza',
                'Spinache and artichoke dip stuffed garlic bread',
                'Trout with garlic lemon butter herb sauce',
                'Welsh rarebit']

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
