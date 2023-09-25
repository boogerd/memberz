class CreateMandates < ActiveRecord::Migration[7.0]
  def change
    create_table :mandates do |t|
      t.string :mandate_code
      t.date :mandate_date
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
