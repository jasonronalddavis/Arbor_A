class CreateProductComments < ActiveRecord::Migration[6.1]
  def change
    create_table :product_comments do |t|
      t.integer :product_id
      t.integer :comment_id
      t.integer :user_id

      t.timestamps
    end
  end
end
