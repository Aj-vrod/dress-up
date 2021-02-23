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
    photo: 'https://www.fillmurray.com/640/360',
    user: User.all.sample
    )
  puts "💃 Adding #{dress.title}..."
end
puts "✅ Weow, app's now filled with loads of 🔥 dresses!"
