class User < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  has_many :transactions
  has_many :budgets
  has_many :subcategories, through: :transactions
  has_many :categories, through: :budgets
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  def format_amount
    number_to_currency(self.amount, precision: 2)
  end

end
