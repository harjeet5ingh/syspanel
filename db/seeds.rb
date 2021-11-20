# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.exists?(email: "admin@gmail.com")
  User.create(email: "admin@gmail.com", password: "123456", password_confirmation: "123456")
end

unless System.exists?
  records = []
  (1..13).reverse_each do |idx|
    records << { id: idx, name: idx-1, manufactured_date: Date.today - (30.days - idx.days) }
  end

  System.create(records)
end

unless Customer.exists?
  records = []
  13.times do |idx|
    records << { id: idx+1, name: "Customer #{idx+1}", state: "New Delhi" }
  end

  Customer.create(records)
end
