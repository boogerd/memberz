class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.date :invoice_date
      t.date :due_date
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
