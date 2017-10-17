class CreateGroupMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :group_members do |t|
      # 그룹 번호, 멤버
      t.integer :group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
