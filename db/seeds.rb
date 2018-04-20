Product.destroy_all
Review.destroy_all

50.times do |i|
  Product.create(name: Faker::Beer.name,
                cost: Faker::Commerce.price,
                country: Faker::Address.country)
end

p "created #{Product.count} products"
