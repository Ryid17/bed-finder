# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bed.destroy_all
User.create(email: "consumer@test.com", password: "123456", role: "consumer")
User.create(email: "provider@test.com", password: "123456", role: "provider")
category = ["child", "adult", "elderly" ]
city = ["London", "Birmingham", "Brighton" ]
5.times do
  Bed.create(category: category.sample, user: User.first, city: city.sample)
end


