class AddEndDateToMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :end_date, :date
  end
end
