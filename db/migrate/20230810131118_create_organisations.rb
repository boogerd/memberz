class CreateOrganisations < ActiveRecord::Migration[7.0]
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :vat_number
      t.string :coc_number

      t.timestamps
    end
  end
end
