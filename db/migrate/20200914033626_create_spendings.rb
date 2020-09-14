class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.date :spending_date
      t.string :description
      t.integer :amount

      t.timestamps
    end
  end
end
