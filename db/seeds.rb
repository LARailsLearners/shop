
100.times do
  Customer.create( name: FFaker::Name.name )
end

15.times do
  Product.create( name: FFaker::Product.product_name, price: Faker::Commerce.price )
end
products = Product.all.ids

Customer.all.each do |cust|
  products.sample(3).each do |prod|
    Order.create(customer_id: cust.id, product_id: prod)
  end
end