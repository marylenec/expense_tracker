class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :user
      t.belongs_to :actual_expense
      t.belongs_to :budget_expense
      t.integer :month
      t.integer :year
      t.integer :day

      t.timestamps
    end
  end
end
