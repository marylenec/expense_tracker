class Period < ApplicationRecord
  has_many :transactions
  has_many :budgets
  belongs_to :dashboard

  def name
    "#{month}/#{year}"
  end

  def count
    Period.all.size
  end
end
