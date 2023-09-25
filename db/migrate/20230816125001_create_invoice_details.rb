class CreateInvoiceDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :invoice_details do |t|
      t.decimal :quantity
      t.string :description
      t.decimal :unit_price
      t.decimal :net_amount
      t.decimal :vat_amount
      t.decimal :gross_amount
      t.references :invoice, null: false, foreign_key: true
      t.timestamps
    end
  end
end
