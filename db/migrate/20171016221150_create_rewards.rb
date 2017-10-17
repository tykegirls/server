class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      # pk, 유저, 이미지, 우선순위, 공개여부, 달성여부
      t.integer :user_id
      t.string  :img
      t.integer :period
      t.boolean :private
      t.boolean :goal

      t.timestamps
    end
  end
end
