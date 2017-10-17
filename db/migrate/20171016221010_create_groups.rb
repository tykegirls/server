class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      # pk, 그룹명, 그룹장, 그룹원 수, 그룹 예산
      t.string  :name
      t.integer :user_id
      t.integer :count
      t.integer :budget

      t.timestamps
    end
  end
end
