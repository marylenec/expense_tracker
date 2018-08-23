# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


marylene = User.create(name: "marylene", email: "mc@gmail.com", password: "hey")
daniel = User.create(name: "daniel", email: "dr@gmail.com", password: "hey2")

dashboard1 = Dashboard.create(name:"Actual vs. Budget", user_id: 1, description: "Cool report showing your actual expenses vs. your budget")

car = Category.create(name: "car", description: "car stuff")
home = Category.create(name: "home", description: "home stuff")

may_2018 = Period.create(month: 5, year: 2018, dashboard: dashboard1)
jun_2018 = Period.create(month: 6, year: 2018, dashboard: dashboard1)

car_payment = Subcategory.create(name: "car payment", description: "recurring", category: car)
car_gas = Subcategory.create(name: "car gas", description: "nil", category: car)
mortgage_payment = Subcategory.create(name: "mortgage payment", description: "nil", category: home)

budget_may_car = Budget.create(amount: 500, user: daniel, category: car, period: may_2018)
budget_may_home = Budget.create(amount: 1200, user: marylene, category: home, period: may_2018)
budget_jun_car = Budget.create(amount: 500, user: daniel, category: car, period: jun_2018)
budget_jun_home = Budget.create(amount: 1200, user: marylene, category: home, period: jun_2018)

car_payment_may_txn = Transaction.create(vendor: "Chase Bank", amount: 400, user: daniel, subcategory: car_payment, period: may_2018, date: 14)
car_gas_may_txn = Transaction.create(vendor: "Shell", amount: 50, user: daniel, subcategory: car_gas, period: may_2018, date: 24)
car_payment_jun_txn = Transaction.create(vendor: "Chase Bank", amount: 400, user: daniel, subcategory: car_payment, period: jun_2018, date: 14)
car_gas_jun_txn = Transaction.create(vendor: "Citgo", amount: 80, user: daniel, subcategory: car_gas, period: jun_2018, date: 12)
mortgage_may_txn = Transaction.create(vendor: "Amegy", amount: 1200, user: marylene, subcategory: mortgage_payment, period: may_2018, date: 1)
