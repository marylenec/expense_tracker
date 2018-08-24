class Period < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  has_many :transactions
  has_many :budgets

  def name
    "#{month}/#{year}"
  end

  def count
    Period.all.size
  end

  def format_amount
    number_to_currency(self.amount, precision: 2)
  end

  def sort_month
    self.month.sort
  end

end
