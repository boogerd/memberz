class CreatePeriods < ActiveRecord::Migration[7.0]
  def change
    create_table :periods do |t|
      t.date :start_date
      t.date :end_date
      t.references :organisation, null: false, foreign_key: true
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
