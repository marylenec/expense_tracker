class Category < ApplicationRecord
  has_many :subcategories
  has_many :budgets

  def count
    Category.all.size
  end

  

end
