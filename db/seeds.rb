Product.destroy_all
Review.destroy_all

10.times do |i|
  Product.create(name: Faker::Beer.name,
                cost: Faker::Commerce.price,
                country: Faker::Address.country)
  Product.create(name: Faker::Coffee.blend_name + " roast",
                cost: Faker::Commerce.price,
                country: Faker::Address.country)
  Product.create(name: Faker::Food.dish,
                cost: Faker::Commerce.price,
                country: Faker::Address.country)
end
20.times do |i|
  Product.create(name: Faker::Food.dish,
                cost: Faker::Commerce.price,
                country: Faker::Address.country)
end

5.times do |i|
  Product.all.each do |product|
    product.reviews.create(author: Faker::Name.first_name,
                          content_body: Faker::Lorem.sentences(3),
                          rating: rand(1..5)
                          )
  end
end
p "created #{Product.count} products"
p "created #{Review.count} Reviews"
