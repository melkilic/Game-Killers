class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.string :user_name
      t.string :password
    end
  end
end
