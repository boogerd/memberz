class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.references :account, null: false, foreign_key: true
      t.references :period, null: false, foreign_key: true
      t.references :organisation, null: false, foreign_key: true
      t.float :amount
      t.string :remarks

      t.timestamps
    end
  end
end
