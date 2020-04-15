class CreateGame < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :trivium_id
    end
  end
end
