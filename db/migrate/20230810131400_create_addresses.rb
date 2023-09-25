class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address_line
      t.string :postal_code
      t.string :place
      t.string :address_type
      t.boolean :default_address

      t.timestamps
    end
  end
end
