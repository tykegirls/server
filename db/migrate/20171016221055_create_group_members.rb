class CreateGroupMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :group_members do |t|

      t.timestamps
    end
  end
end
