class CreateBudgetExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_expenses do |t|
      t.string :category
      t.integer :amount

      t.timestamps
    end
  end
end
