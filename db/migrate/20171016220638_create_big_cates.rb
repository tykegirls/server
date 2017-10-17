class CreateBigCates < ActiveRecord::Migration[5.1]
  def change
    create_table :big_cates do |t|
      # pk, 이름, 아이콘
      t.string  :name
      t.string  :icon
    end
  end
end
