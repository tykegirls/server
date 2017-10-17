class CreateSmallCates < ActiveRecord::Migration[5.1]
  def change
    create_table :small_cates do |t|
      # pk, 큰카테고리, 항목
      t.integer :big_cate_id
      t.string  :name
    end
  end
end
