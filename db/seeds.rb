require 'faker'

# delete old stuff from db
Dress.destroy_all
puts 'Shredding old dresses...'
User.destroy_all
puts 'Kicking users...'

# create new users
10.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    encrypted_password:Faker::Internet.password(min_length: 8),
    nickname: Faker::Internet.username,
    address: Faker::Address.street_address,
    avatar: Faker::Avatar.image
    )
  puts "#{user.nickname} created!"
end

# types of dresses
sample_categories = ['Bridal Dresses', 'Bridesmaids Dresses', 'Casual Dresses', 'Going Out Dresses', 'Occasion Dresses', 'Summer Dresses', 'Work Dresses']

# create dresses
20.times do
  dress = Dress.create!(
    title: Faker::Commerce.product_name,
    description: Faker::ChuckNorris.fact,
    price: Faker::Commerce.price,
    category: sample_categories.sample,
    color: Faker::Color.color_name ,
    photo: 'https://www.fillmurray.com/640/360',
    user: User.sample
    )
  puts "💃 Adding #{dress.title}..."
end

puts "Weow, app's now filled with loads of 🔥 dresses!"

