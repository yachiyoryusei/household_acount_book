class CreateBudgets < ActiveRecord::Migration[6.1]
  def change
    create_table :budgets do |t|
      t.integer :price
      t.integer :month
      t.integer :user_id

      t.timestamps
    end
  end
end
