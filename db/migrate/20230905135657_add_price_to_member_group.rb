class AddPriceToMemberGroup < ActiveRecord::Migration[7.0]
  def change
    add_column :member_groups, :price, :float
  end
end
