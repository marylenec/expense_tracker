class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :vendor
      t.integer :amount
      t.integer :date
      t.string :description
      t.belongs_to :user
      t.belongs_to :subcategory
      t.belongs_to :period

      t.timestamps
    end
  end
end
