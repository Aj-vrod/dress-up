# User.destroy_all
User.create(first_name: "Ana", last_name: "Smith", email: "ana@smith.com", password: "123456", address: "somwehere")
User.create(first_name: "Julia", last_name: "Sanchez", email: "julia@sanchez.com", password: "123456", address: "somwehere")
User.create(first_name: "Nina", last_name: "Garcia", email: "nina@garcia.com", password: "123456", address: "somwehere")
User.create(first_name: "Sara", last_name: "Varas", email: "sara@varas.com", password: "123456", address: "somwehere")
User.create(first_name: "Alicia", last_name: "Kloop", email: "alicia@kloop.com", password: "123456", address: "somwehere")

sample_categories = ['Bridal Dresses', 'Bridesmaids Dresses', 'Casual Dresses', 'Going Out Dresses', 'Occasion Dresses', 'Summer Dresses', 'Work Dresses']

20.times do
 dress = Dress.create!(
  title: Faker::Commerce.product_name,
  description: Faker::ChuckNorris.fact,
  price: Faker::Commerce.price,
  category: sample_categories.sample,
  color: Faker::Color.color_name ,
  photo: 'https://www.fillmurray.com/640/360',
  user: User.last
  )
end
