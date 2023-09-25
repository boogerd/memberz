class AddGroupToMember < ActiveRecord::Migration[7.0]
  def change
    add_reference :members, :member_group, null: false, foreign_key: true
  end
end
