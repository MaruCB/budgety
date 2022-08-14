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

# Users
user = User.create(email: 'bob@mail.com', password: '123456', first_name: "Bob", last_name: "Builder")

# Categories
Category.create(name: 'Food', icon_name: "salad", category_type: "expense")
Category.create(name: 'Salary', icon_name: "salary", category_type: "income")
Category.create(name: 'Housing', icon_name: "housing", category_type: "expense")
Category.create(name: 'Transport', icon_name: "transport", category_type: "expense")
Category.create(name: 'Shopping', icon_name: "shopping", category_type: "expense")
Category.create(name: 'Bills', icon_name: "bills", category_type: "expense")
Category.create(name: 'Going out', icon_name: "going_out", category_type: "expense")
Category.create(name: 'Activities', icon_name: "activities", category_type: "expense")
Category.create(name: 'Entertainment', icon_name: "entertainment", category_type: "expense")

Transaction.create(
  notes: 'going out',
  date: '06/08/2022',
  amount: 12,
  user_id: user.id,
  category_id: Category.first.id
)
