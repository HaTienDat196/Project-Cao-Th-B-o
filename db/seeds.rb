Category.create(name: 'Men')
Category.create(name: 'Women')
Category.create(name: 'Shoes')
Category.create(name: 'Bag')
Category.create(name: 'Scarf')

99.times do |n|
  Product.create!(
    name: "Product #{n}",
    price: n * 1000,
    sale: 2,
    number: 12,
    image: "minh.jpg",
    category_id: Faker::Number.between(1, 5),
    detail: Faker::ChuckNorris.fact
  )
end

AdminUser.create!(email: 'admin@gmail.com', password: '123456', password_confirmation: '123456') if Rails.env.development?
