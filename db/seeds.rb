# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Transaction.destroy_all
User.destroy_all
Category.destroy_all
user = User.create(email: 'bob@mail.com', password: '123456')
category = Category.create(name: 'Food')
Transaction.create(
  notes: 'going out',
  date: '06/08/2022',
  amount: 12,
  user_id: user.id,
  category_id: category.id
)
