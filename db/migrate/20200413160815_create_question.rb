class CreateQuestion < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :image,  null: false
    end
  end
end
