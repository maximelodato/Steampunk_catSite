# db/seeds.rb

require 'faker'

# Create Messages


# Create Orders and ItemOrdered
puts "Creating orders and item ordereds..."
User.all.each do |user|
  rand(1..3).times do
    order = Order.create!(user: user)
    rand(1..5).times do
      ItemOrdered.create!(
        order: order,
        item: Item.all.sample
      )
    end
  end
end

# Create Products
puts "Creating products..."
10.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 10..100.0),
    description: Faker::Lorem.paragraph
  )
end

puts "Database seeded successfully!"