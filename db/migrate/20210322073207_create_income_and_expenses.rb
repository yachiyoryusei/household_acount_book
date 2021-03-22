class CreateIncomeAndExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :income_and_expenses do |t|
      t.integer :price
      t.date :expense_date
      t.integer :user_id

      t.timestamps
    end
  end
end
