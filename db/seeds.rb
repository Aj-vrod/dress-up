require 'faker'

# delete old stuff from db
Dress.destroy_all
puts '🗑 Shredding old dresses...'
User.destroy_all
puts '🗑 Kicking users...'

# create new users
10.times do
  # user = User.create!(
  #   {
  #     reset_password_token: nil,
  #     reset_password_sent_at: nil,
  #     remember_created_at: nil,

  #     # sign_in_count: 1,
  #     # current_sign_in_at: "2014-12-31 22:27:09",
  #     # last_sign_in_at: "2014-12-31 22:27:09",
  #     # current_sign_in_ip: "127.0.0.1",
  #     # last_sign_in_ip: "127.0.0.1",

  #     first_name: Faker::Name.first_name,
  #     last_name: Faker::Name.last_name,
  #     email: Faker::Internet.email,
  #     encrypted_password: "$2a$10$5eoHh6M2q4GjGkHClO.NqebWWhS94D8rNj5Ot6CB2qrbn7IrTfkSa",
  #     nickname: Faker::Internet.username,
  #     address: Faker::Address.street_address,
  #     avatar: Faker::Avatar.image
  #   }
  # )

  user = User.new
  user.first_name = Faker::Name.first_name,
  user.last_name = Faker::Name.last_name,
  user.email = Faker::Internet.email,
  # user.encrypted_password = '123456',
  user.nickname = Faker::Internet.username,
  user.address = Faker::Address.street_address,
  user.avatar = Faker::Avatar.image
  user.save!

  puts "🙂 #{user.nickname} created!"
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

puts "✅ Weow, app's now filled with loads of 🔥 dresses!"

