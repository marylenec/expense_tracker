class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.integer :month
      t.integer :year
      t.belongs_to :dashboard

      t.timestamps
    end
  end
end
