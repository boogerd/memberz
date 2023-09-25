class AddFieldsToInvoice < ActiveRecord::Migration[7.0]
  def change
    add_column :invoices, :quantity, :float
    add_column :invoices, :price, :float
    add_column :invoices, :description, :string
    add_column :invoices, :total, :float
  end
end
