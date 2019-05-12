class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :price
      t.integer :user_id
      t.boolean :purchased, default: false

      t.timestamps
    end
  end
end
