require 'faker'
# delete old stuff from db
Dress.destroy_all
puts '🗑 Shredding old dresses...'

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
    address: Faker::Address.street_address,
    photo: 'https://i.postimg.cc/FzPrxqqP/Bildschirmfoto-2021-02-23-um-16-54-30.png',
    user: User.all.sample
    )
  puts "💃 Adding #{dress.title}..."
end
puts "✅ Weow, app's now filled with loads of 🔥 dresses!"
