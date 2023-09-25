class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :salutation
      t.string :first_name
      t.string :last_name
      t.date :birtday
      t.string :email
      t.string :phone
      t.string :mobile
      t.date :start_date
      t.string :end_date
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
