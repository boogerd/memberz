class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.references :member, null: false, foreign_key: true
      t.references :membership_type, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.date :renewal_date
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
