class CreateReceipts < ActiveRecord::Migration[5.1]
  def change
    create_table :receipts do |t|

      t.timestamps
    end
  end
end
