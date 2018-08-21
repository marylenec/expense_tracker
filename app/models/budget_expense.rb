class BudgetExpense < ApplicationRecord
  has_many :transactions
  has_many :actual_expenses, through: :transactions
end
