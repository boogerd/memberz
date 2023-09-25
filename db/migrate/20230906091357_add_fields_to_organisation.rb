class AddFieldsToOrganisation < ActiveRecord::Migration[7.0]
  def change
    add_column :organisations, :street, :string
    add_column :organisations, :postal_code, :string
    add_column :organisations, :place, :string
    add_column :organisations, :email, :string
    add_column :organisations, :phone, :string
    add_column :organisations, :iban, :string
    add_column :organisations, :mandate_contract_no, :string
  end
end
