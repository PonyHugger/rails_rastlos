class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_surname
      t.string :user_adress_city
      t.integer :user_adress_zip
      t.string :user_adress_street
      t.integer :user_adress_number
      t.string :user_mail
      t.string :user_tel
      t.string :user_password

      t.timestamps
    end
  end
end
