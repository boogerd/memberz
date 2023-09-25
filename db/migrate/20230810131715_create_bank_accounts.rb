class CreateBankAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.string :account_number
      t.string :iban
      t.string :swift
      t.boolean :default_account
      t.string :collection_id

      t.timestamps
    end
  end
end
