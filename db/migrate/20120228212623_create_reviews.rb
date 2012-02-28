class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :product

      t.timestamps
    end
    add_index :reviews, :product_id
  end
end
