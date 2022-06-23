class CreateImageComments < ActiveRecord::Migration[6.1]
  def change
    create_table :image_comments do |t|
      t.integer :product_id
      t.integer :comment_id
      t.integer :user_id
      t.integer :image_id

      t.timestamps
    end
  end
end
