class CreateUserCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_carts do |t|
      t.integer :user_id
      t.integer :cart_id
      t.integer :product_id
      t.timestamps
    end
  end
end
