class CreateBigCates < ActiveRecord::Migration[5.1]
  def change
    create_table :big_cates do |t|

      t.timestamps
    end
  end
end
