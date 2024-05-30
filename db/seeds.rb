# db/seeds.rb

require 'faker'

# Create Users
puts "Creating users..."
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password', # Setting a plain text password, Devise will handle encryption
    password_confirmation: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    admin: [true, false].sample
  )
end

# Create Items
puts "Creating items..."
10.times do
  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['product']),
    active: [true, false].sample
  )
end

# Create Events
puts "Creating events..."
5.times do
  Event.create!(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    date: Faker::Date.forward(days: 30),
    location: Faker::Address.full_address
  )
end

# Create Messages
puts "Creating messages..."
5.times do
  Message.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    message: Faker::Lorem.paragraph
  )
end

# Create Carts and Purchases
puts "Creating carts and purchases..."
User.all.each do |user|
  cart = Cart.create!(user: user)
  rand(1..5).times do
    Purchase.create!(
      cart: cart,
      item: Item.all.sample
    )
  end
end

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
    description: Faker::Lorem.paragraph,
    image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['product'])
  )
end

puts "Database seeded successfully!"
