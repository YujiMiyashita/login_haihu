class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name
      t.string :email
      #password_digestカラムを定義する
      #remember_digestカラムを定義する

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
