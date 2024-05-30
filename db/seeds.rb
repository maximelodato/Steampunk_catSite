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

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://i.pinimg.com/474x/dd/25/8a/dd258a9fb803693b1e5ab0e2d364ffac.jpg",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://t4.ftcdn.net/jpg/05/49/57/17/360_F_549571748_ZI8EEXkcYNmVqjhaQQEDH9gNhjDT5ffJ.jpg",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5oGQ_4IllmdaGqP5gTyrKJipjPy17-nm2xg&s",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9d97e226-8ba9-4fb8-9c1f-b221f73ec929/dgmxgu1-df2321a7-4cb1-45c7-a8a1-4c4e2b32e537.png/v1/fill/w_894,h_894,q_70,strp/steampunk_cats_by_terikub_dgmxgu1-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcLzlkOTdlMjI2LThiYTktNGZiOC05YzFmLWIyMjFmNzNlYzkyOVwvZGdteGd1MS1kZjIzMjFhNy00Y2IxLTQ1YzctYThhMS00YzRlMmIzMmU1MzcucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.P0wTl6hGyBU_Detprh_meB-mVh1alIuhkXw0OxJ95tg",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWXuG39eUg1Ed_DhrU9f7_lLhTkiB_n143KQ&s",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRsJmmK7ndh_7KMP_v5YxIWxXWFKQtPh_AEg&s",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://t4.ftcdn.net/jpg/05/63/10/97/360_F_563109727_EXo3X5gT8aRAW4psaPDNwLvMtxPRPn17.jpg",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://i0.wp.com/steampunkstuff.co.uk/wp-content/uploads/2023/02/steampunk-cat-clan-22the-impawsters22-ai-generated-art-.jpg?fit=1140%2C1140&ssl=1",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFGVEgr9GoGmdq09uKAp4bCzciKUhE_NTOgYzvA1dU2oitf3Mvu0X1UVQ1aZ42Y3cG-00&usqp=CAU",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZacyUhz1LVgeWFbONyX6DyHA1XxMdfJneVsxTKxSIRH3V-2l1Ug7VyX2YqUVnOV_pTk0&usqp=CAU",
    active: [true, false].sample
  )

  Item.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://t4.ftcdn.net/jpg/05/58/22/47/360_F_558224734_0wwfXk8YpZmp9tcUw50Jo9sIZr0vrAzy.jpg",
    active: [true, false].sample
  )


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



# Create Products
puts "Creating products..."

Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://i.pinimg.com/474x/dd/25/8a/dd258a9fb803693b1e5ab0e2d364ffac.jpg",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://t4.ftcdn.net/jpg/05/49/57/17/360_F_549571748_ZI8EEXkcYNmVqjhaQQEDH9gNhjDT5ffJ.jpg",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5oGQ_4IllmdaGqP5gTyrKJipjPy17-nm2xg&s",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9d97e226-8ba9-4fb8-9c1f-b221f73ec929/dgmxgu1-df2321a7-4cb1-45c7-a8a1-4c4e2b32e537.png/v1/fill/w_894,h_894,q_70,strp/steampunk_cats_by_terikub_dgmxgu1-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcLzlkOTdlMjI2LThiYTktNGZiOC05YzFmLWIyMjFmNzNlYzkyOVwvZGdteGd1MS1kZjIzMjFhNy00Y2IxLTQ1YzctYThhMS00YzRlMmIzMmU1MzcucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.P0wTl6hGyBU_Detprh_meB-mVh1alIuhkXw0OxJ95tg",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWXuG39eUg1Ed_DhrU9f7_lLhTkiB_n143KQ&s",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRsJmmK7ndh_7KMP_v5YxIWxXWFKQtPh_AEg&s",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://t4.ftcdn.net/jpg/05/63/10/97/360_F_563109727_EXo3X5gT8aRAW4psaPDNwLvMtxPRPn17.jpg",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://i0.wp.com/steampunkstuff.co.uk/wp-content/uploads/2023/02/steampunk-cat-clan-22the-impawsters22-ai-generated-art-.jpg?fit=1140%2C1140&ssl=1",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFGVEgr9GoGmdq09uKAp4bCzciKUhE_NTOgYzvA1dU2oitf3Mvu0X1UVQ1aZ42Y3cG-00&usqp=CAU",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZacyUhz1LVgeWFbONyX6DyHA1XxMdfJneVsxTKxSIRH3V-2l1Ug7VyX2YqUVnOV_pTk0&usqp=CAU",
  )

  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 10..100.0),
    image_url: "https://t4.ftcdn.net/jpg/05/58/22/47/360_F_558224734_0wwfXk8YpZmp9tcUw50Jo9sIZr0vrAzy.jpg",
  )

puts "Database seeded successfully!"
