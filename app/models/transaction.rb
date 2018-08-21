class Transaction < ApplicationRecord
  belongs_to :actual_expense
  belongs_to :user
  belongs_to :budget_expense
end
