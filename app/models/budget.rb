class Budget < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  belongs_to :user
  belongs_to :category
  belongs_to :period
  has_many :transactions

  def category_name=(name)
    self.category = Category.find_or_create_by(name: name)
  end

  def category_name
     self.category ? self.category.name : nil
  end

  def count
    Budget.all.size
  end

  def format_amount
    number_to_currency(self.amount, precision: 2)
  end

  # def period_month=(month)
  #   self.period_month = Period.find_or_create_by(month: month)
  # end
  #
  # def period_month
  #    self.period ? self.period.month : nil
  # end

  # def period_year=(year)
  #   self.period = Period.find_or_create_by(year: year)
  # end
  #
  # def period_year
  #    self.period ? self.period.year : nil
  # end

end
