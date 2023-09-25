class AddFieldsToTransaction < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :iban, :string
    add_column :transactions, :counter_iban, :string
    add_column :transactions, :transaction_code, :string
    add_column :transactions, :transaction_type, :string
    add_column :transactions, :balance, :float
  end
end
