class CreateReceipts < ActiveRecord::Migration[5.1]
  def change
    create_table :receipts do |t|
      # pk, 금액, 유저, 카드, 날짜, 카테고리, 내역, 할부, 메모
      t.integer :price
      t.integer :user_id
      t.integer :card_id
      t.integer :small_cate_id
      t.string  :description
      t.boolean :mon_pay
      t.text    :memo

      t.timestamps
    end
  end
end
