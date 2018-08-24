# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


marylene = User.create(name: "marylene", email: "mc@gmail.com", password: "hey")
daniel = User.create(name: "daniel", email: "dr@gmail.com", password: "hey2")

car = Category.create(name: "car", description: "car stuff")
home = Category.create(name: "home", description: "home stuff")
pet = Category.create(name: "pet", description: "pet stuff")
vacation = Category.create(name: "vacation", description: "vacation stuff")
shopping = Category.create(name: "shopping", description: "shopping stuff")
bike = Category.create(name: "bike", description: "bike stuff")
entertainment = Category.create(name: "entertainment", description: "entertainment stuff")

jun_2018 = Period.create(month: 6, year: 2018)
jul_2018 = Period.create(month: 7, year: 2018)
aug_2018 = Period.create(month: 8, year: 2018)
sep_2018 = Period.create(month: 9, year: 2018)
oct_2018 = Period.create(month: 10, year: 2018)

car_payment = Subcategory.create(name: "car payment", description: "recurring", category: car)
car_gas = Subcategory.create(name: "car gas", description: "nil", category: car)
mortgage_payment = Subcategory.create(name: "home payment", description: "nil", category: home)
mortgage_insurance = Subcategory.create(name: "home insurance", description: "nil", category: home)
vac_ticket = Subcategory.create(name: "plane tickets", description: "nil", category: vacation)
vac_hotel = Subcategory.create(name: "hotel", description: "nil", category: vacation)
movie = Subcategory.create(name: "movie", description: "nil", category: entertainment)


budget_aug_car = Budget.create(amount: 500, user: daniel, category: car, period: aug_2018)
budget_aug_home = Budget.create(amount: 1200, user: marylene, category: home, period: aug_2018)
budget_aug_car = Budget.create(amount: 500, user: daniel, category: car, period: aug_2018)
budget_aug_ent = Budget.create(amount: 500, user: daniel, category: entertainment, period: aug_2018)
budget_aug_vac = Budget.create(amount: 2500, user: daniel, category: vacation, period: aug_2018)
budget_aug_pet = Budget.create(amount: 500, user: marylene, category: pet, period: aug_2018)

budget_jun_home = Budget.create(amount: 1200, user: marylene, category: home, period: jun_2018)
budget_jul_car = Budget.create(amount: 1200, user: marylene, category: car, period: jul_2018)
budget_jun_home = Budget.create(amount: 1200, user: marylene, category: home, period: jul_2018)

car_payment_aug_txn = Transaction.create(vendor: "Chase Bank", amount: 400, user: daniel, subcategory: car_payment, period: aug_2018, description: "recurring", date: 14)
car_gas_aug_txn = Transaction.create(vendor: "Shell", amount: 50, user: daniel, subcategory: car_gas, period: aug_2018, description: "nil", date: 24)
car_payment_jun_txn = Transaction.create(vendor: "Chase Bank", amount: 400, user: daniel, subcategory: car_payment, period: jun_2018, description: "recurring", date: 14)
car_gas_jun_txn = Transaction.create(vendor: "Citgo", amount: 80, user: daniel, subcategory: car_gas, period: jun_2018, description: "nil", date: 12)
mortgage_aug_txn = Transaction.create(vendor: "Amegy", amount: 1200, user: marylene, subcategory: mortgage_payment, period: aug_2018, description: "nil", date: 1)
mortgage_jun_txn = Transaction.create(vendor: "Amegy", amount: 1200, user: marylene, subcategory: mortgage_payment, period: jun_2018, description: "nil", date: 1)
mortgage_jul_txn = Transaction.create(vendor: "Amegy", amount: 1200, user: marylene, subcategory: mortgage_payment, period: jul_2018, description: "nil", date: 1)
vac_jun_txn = Transaction.create(vendor: "Southwest", amount: 350, user: daniel, subcategory: vac_ticket, period: jun_2018, description: "Florida", date: 14)
vac2_jun_txn = Transaction.create(vendor: "W Hotel", amount: 1350, user: daniel, subcategory: vac_ticket, period: jun_2018, description: "Best Hotel Ever", date: 18)
cra_aug_txn = Transaction.create(vendor:"Star Cinema", amount:20, user: marylene, subcategory: movie, period: aug_2018, description: "Crazy Rich Asians Movie Tickets", date: 20)
