class CreateFixedExps < ActiveRecord::Migration[5.1]
  def change
    create_table :fixed_exps do |t|

      t.timestamps
    end
  end
end
