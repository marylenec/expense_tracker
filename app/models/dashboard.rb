class Dashboard < ApplicationRecord
  belongs_to :user
  has_many :periods
  has_many :transactions, through: :periods
  has_many :budgets, through: :periods

  def count
    Dashboard.all.size
  end


end
