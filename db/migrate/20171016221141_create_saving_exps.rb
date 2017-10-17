class CreateSavingExps < ActiveRecord::Migration[5.1]
  def change
    create_table :saving_exps do |t|
      # pk, 유저, 카테고리, 금액, 내역, 메모
      t.integer :user_id
      t.integer :small_cate_id
      t.integer :price
      t.string  :description
      t.text    :memo

      t.timestamps
    end
  end
end
