class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :transactions

  # def total
  #   subcategory_total = 0
  #   Subcategory.transaction.all.each do |s|
  #     subcategory_total += s.amount
  #   end
  #   subcategory_total
  #   # take in subcategory
  #   # look up the associated category
  #   # get the amount
  #   # sum the amount
  # end

end
