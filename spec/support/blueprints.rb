require 'machinist/active_record'

# Add your blueprints here.

Mobilization.blueprint do
  title       { Faker::Lorem.sentence }
  short_title { Faker::Lorem.sentence }
  description { Faker::Lorem.paragraph }
  image       { File.open("#{Rails.root}/features/support/image.jpeg") }
  hashtag     { Faker::Lorem.word }
end

Campaign.blueprint do
  name              { Faker::Lorem.sentence }
  description_html  { Faker::Lorem.paragraph }
  link              { Faker::Internet.url }
  uid               { sn }
  hashtag           { Mobilization.make!.hashtag }
end

Problem.blueprint do
  name          { Faker::Lorem.sentence }
  description   { Faker::Lorem.paragraph }
  link          { Faker::Internet.url }
  uid           { sn }
  hashtag       { Mobilization.make!.hashtag }
end

Idea.blueprint do
  name          { Faker::Lorem.sentence }
  description   { Faker::Lorem.paragraph }
  link          { Faker::Internet.url }
  uid           { sn }
end

Poke.blueprint do
  uid { sn }
end

Tweet.blueprint do
  username     { Faker::Internet.user_name }
  text         { Faker::Lorem.sentence(10) }
  hashtag      { Faker::Lorem.word }
  published_at { Time.now }
  uid          { sn.to_s }
end

Image.blueprint do
  file  { File.open("#{Rails.root}/features/support/image.jpeg") }
  uid   { sn.to_s }
end

FacebookPost.blueprint do
  username      { Faker::Internet.user_name }
  text          { Faker::Lorem.sentence(10) }
  hashtag       { Faker::Lorem.word }
  published_at  { Time.now }
  uid           { sn.to_s }
end

Comment.blueprint do
  # Attributes here
end

Event.blueprint do
  uid         { sn.to_s }
  description { Faker::Lorem.sentence(10) }
  name        { Faker::Lorem.sentence }
  link        { Faker::Internet.url }
end

Clipping.blueprint do
  uid           { sn.to_s }
  body          { Faker::Lorem.paragraph(1) }
  published_at  { Time.now }
  link          { Faker::Internet.url }
  image         { File.open("#{Rails.root}/features/support/image.jpeg") }
  hashtag       { Faker::Lorem.word }
end

User.blueprint do
  first_name  { Faker::Name.first_name }
  last_name   { Faker::Name.last_name }
  email       { Faker::Internet.email }
  password    { Faker::Internet.password }
end
