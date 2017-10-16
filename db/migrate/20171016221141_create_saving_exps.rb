class CreateSavingExps < ActiveRecord::Migration[5.1]
  def change
    create_table :saving_exps do |t|

      t.timestamps
    end
  end
end
