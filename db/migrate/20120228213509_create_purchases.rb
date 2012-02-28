class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :user
      t.references :product

      t.timestamps
    end
    add_index :purchases, :user_id
    add_index :purchases, :product_id
  end
end
