class CreateActualExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :actual_expenses do |t|
      t.string :line_item
      t.integer :amount

      t.timestamps
    end
  end
end
