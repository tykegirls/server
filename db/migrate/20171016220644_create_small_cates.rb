class CreateSmallCates < ActiveRecord::Migration[5.1]
  def change
    create_table :small_cates do |t|

      t.timestamps
    end
  end
end
