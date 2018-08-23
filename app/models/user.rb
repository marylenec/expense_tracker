class User < ApplicationRecord
  has_many :transactions
  has_many :budgets
  has_many :subcategories, through: :transactions
  has_many :categories, through: :budgets
  has_many :dashboards
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true

  # validates :first_name, presence: true
  # validates :last_name, presence: true

end
