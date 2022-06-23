class CreateProductImages < ActiveRecord::Migration[6.1]
  def change
    create_table :product_images do |t|
      t.integer :image_id
      t.integer :product_id

      t.timestamps
    end
  end
end
