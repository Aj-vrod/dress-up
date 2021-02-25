require 'faker'
# delete old stuff from db
Dress.destroy_all
puts '🗑 Shredding old dresses...'

# types of dresses
sample_categories = ['Bridal Dresses', 'Bridesmaids Dresses', 'Casual Dresses', 'Going Out Dresses', 'Occasion Dresses', 'Summer Dresses', 'Work Dresses']

# sample colors
sample_colors = ['Red', 'Green', 'Blue', 'Black', 'White', 'Grey', 'Yellow', 'Purple', 'Pink', 'Orange', 'Silver', 'Gold', 'Multicolored', 'Beige']

# create dresses
90.times do
  dress = Dress.create!(
    title: Faker::Commerce.product_name,
    description: Faker::ChuckNorris.fact,
    price: Faker::Commerce.price,
    category: sample_categories.sample,
    color: sample_colors.sample ,
    address: 'Berlin',
    photo: 'https://i.postimg.cc/FzPrxqqP/Bildschirmfoto-2021-02-23-um-16-54-30.png',
    user: User.all.sample
    )
  puts "💃 Adding #{dress.title}..."
end
puts "✅ Weow, app's now filled with loads of 🔥 dresses!"
