class CreateProductTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :product_transactions do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
