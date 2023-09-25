class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :number
      t.string :description
      t.string :account_type
      t.string :status
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
