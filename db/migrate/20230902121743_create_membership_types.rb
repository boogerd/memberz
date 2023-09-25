class CreateMembershipTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :membership_types do |t|
      t.string :code
      t.string :description
      t.float :price
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
