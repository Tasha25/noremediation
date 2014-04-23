class CreateUsers < ActiveRecord::Migration
  def change
      create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :salt
      t.string :encrypted_password
      t.timestamps
    end
  end
end

