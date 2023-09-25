class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.date :transaction_date
      t.string :transaction_number
      t.float :transaction_amount
      t.string :description
      t.references :account, null: false, foreign_key: true
      t.references :organisation, null: false, foreign_key: true
      t.text :transaction_text

      t.timestamps
    end
  end
end
