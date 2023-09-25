class AddBankaccountableToBankAccount < ActiveRecord::Migration[7.0]
  def change
    add_reference :bank_accounts, :bankaccountable, polymorphic: true, null: false
  end
end
