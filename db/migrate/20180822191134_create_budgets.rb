class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :amount
      t.string :description
      t.belongs_to :user
      t.belongs_to :category
      t.belongs_to :period

      t.timestamps
    end
  end
end
