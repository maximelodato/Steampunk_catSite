# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create some users
admin = User.create(email: 'admin@example.com', password: 'password', first_name: 'Admin', last_name: 'User', admin: true)
user1 = User.create(email: 'john@example.com', password: 'password', first_name: 'John', last_name: 'Doe')
user2 = User.create(email: 'jane@example.com', password: 'password', first_name: 'Jane', last_name: 'Doe')

# Create some items
item1 = Item.create(title: 'Item 1', description: 'This is the first item', price: 19.99, active: true)
item2 = Item.create(title: 'Item 2', description: 'This is the second item', price: 29.99, active: true)
item3 = Item.create(title: 'Item 3', description: 'This is the third item', price: 39.99, active: false)

# Create some orders
order1 = Order.create(user: user1)
order2 = Order.create(user: user2)

# Create some item_ordereds
ItemOrdered.create(order: order1, item: item1, quantity: 2, price: 19.99)
ItemOrdered.create(order: order1, item: item2, quantity: 1, price: 29.99)
ItemOrdered.create(order: order2, item: item3, quantity: 3, price: 39.99)

