class Cart < ApplicationRecord
    has_many :user_products
    has_many :product_categories
    has_many :user_carts
    has_many :cart_products
    has_many :products, through: :cart_products
    has_many :categories, through: :product_categories
    has_many :user_categories
    has_many :categories, through: :user_categories
end
