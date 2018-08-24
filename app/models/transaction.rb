class Transaction < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  belongs_to :user
  belongs_to :subcategory
  belongs_to :period

  def subcategory_name=(name)
    self.subcategory = Subcategory.find_or_create_by(name: name)
  end

  def subcategory_name
     self.subcategory ? self.subcategory.name : nil
  end

  def count
    Transaction.all.size
  end

  def format_amount
    number_to_currency(self.amount, precision: 2)
  end

  def category_total
    subcategory_total = 0

    own_subcategories = Subcategory.all.select do |subcategory|
      subcategory.transactions.include?(self)
    end

    own_subcategories.each do |subcategory|
      subcategory.transactions.each do |transaction|
        subcategory_total += transaction.amount
      end
    end
    number_to_currency(subcategory_total, precision: 2)
  end

end
