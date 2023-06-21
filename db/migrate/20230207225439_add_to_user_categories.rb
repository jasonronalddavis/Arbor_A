class AddToUserCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :user_categories, :product_id, :integer
  end
end
