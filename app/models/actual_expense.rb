class ActualExpense < ApplicationRecord
  has_many :transactions
  has_many :budget_expenses, through: :transactions
end
