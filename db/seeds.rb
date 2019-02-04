# frozen_string_literal: true

require 'faker'
Visitor.destroy_all
Theirrecipe.destroy_all
# using faker gem to create unique names to create users
30.times { Visitor.create(name: Faker::Name.unique.name) }
# 15 movies
theirrecipes = ['Avengers: Infinity War', 'Star Wars: The Force Awakens', 'Avatar', 'Titanic', 'Jurassic World', 'Black Panther', 'Marvel’s The Avengers', 'Star Wars: The Last Jedi', 'The Dark Knight', 'Beauty and the Beast', 'Finding Dory', 'Pirates of the Caribbean: Dead Man’s Chest', 'Toy Story 3', 'Wonder Woman', 'Iron Man 3']
# create movies
i = 0
15.times do
  Theirrecipe.create(name: theirrecipes[i])
  i += 1
end
# randomly associate movies with users, where no user has the same movie more than once
100.times do
  visitor = Visitor.all[rand(0...30)]
  theirrecipe = Theirrecipe.all[rand(0...15)]
  if visitor.theirrecipes.include?(theirrecipe)
    next
  else
    visitor.theirrecipes << theirrecipe
  end
end
