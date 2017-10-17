class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      # pk, 소유주, 이름, 식별자(cvc)
      t.integer   :user_id
      t.string    :name
      t.string    :cvc

      t.timestamps
    end
  end
end
