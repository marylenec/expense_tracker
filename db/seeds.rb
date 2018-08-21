# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


marylene = User.create(name: "marylene", email: "mc@gmail.com", password: "hey")
daniel = User.create(name: "daniel", email: "dr@gmail.com", password: "hey2")

car_payment = ActualExpense.create(line_item: "car payment", amount: 400)
car_insurance = ActualExpense.create(line_item: "car insurance", amount: 200)

car = BudgetExpense.create(category: "car", amount: 500)

car_transaction1 = Transaction.create(user: marylene, actual_expense_id: 1, budget_expense_id: 1, month: 5, year: 2018, day: 14)
car_transaction2 = Transaction.create(user: marylene, actual_expense_id: 2, budget_expense_id: 1, month: 5, year: 2018, day: 15)
