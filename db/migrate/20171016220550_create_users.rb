class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      # pk, 아이디, 비밀번호, 닉네임, 예산, 생일, 성별
      t.string    :name
      t.string    :pwd
      t.string    :nick
      t.integer   :budget
      t.string    :birthday
      t.boolean   :gender

      t.timestamps
    end
  end
end
