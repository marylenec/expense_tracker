class Transaction < ApplicationRecord
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

end
