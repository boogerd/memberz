class CreateMemberGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :member_groups do |t|
      t.string :name
      t.text :description
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
