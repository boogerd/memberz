class RemoveEndDateFromMember < ActiveRecord::Migration[7.0]
  def change
    remove_column :members, :end_date
  end
end
