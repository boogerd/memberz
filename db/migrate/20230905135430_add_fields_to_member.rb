class AddFieldsToMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :street, :string
    add_column :members, :postal_code, :string
    add_column :members, :place, :string
    add_column :members, :direct_debit, :boolean
    add_column :members, :iban, :string
    add_column :members, :mandate_code, :string
    add_column :members, :mandate_date, :date
    add_column :members, :account_holder, :string
    add_column :members, :terms, :integer
  end
end
