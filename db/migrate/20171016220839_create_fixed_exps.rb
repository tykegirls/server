class CreateFixedExps < ActiveRecord::Migration[5.1]
  def change
    create_table :fixed_exps do |t|
      # pk, 유저, 카드, 금액, 횟수, 내역, 메모, 카테고리
      t.integer :user_id
      t.integer :card_id
      t.integer :price
      t.integer :repeat
      t.text    :memo
      t.integer :small_cate_id

      t.timestamps
    end
  end
end
