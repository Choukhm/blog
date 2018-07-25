# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


User.destroy_all

10.times do 
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  email: Faker::Internet.email)
end

10.times do 
  Article.create(title: Faker::HowIMetYourMother.catch_phrase, content: Faker::HowIMetYourMother.quote)
end

categories = ["Truth", "Lies", "Gossips", "Sadness","Joy"]

categories.each do |c|
  Category.create(name: c)
end

Article.all.each do |a|
  Category.all.sample.articles << a
end

15.times do
  Comment.create(content: Faker::HowIMetYourMother.quote, article: Article.all.sample, user: User.all.sample)
end

15.times do
  Like.create(article: Article.all.sample, user: User.all.sample)
end


