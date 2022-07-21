class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :user_carts
has_many :user_products
has_many :product_comments
has_many :products, through: :user_products
has_many :user_categories
has_many :categories, through: :user_categories 
has_many :product_categories
has_many :categories, through: :product_categories
has_many :user_comments
has_many :comments, through: :user_comments 
has_many :user_images 
has_many :images, through: :user_images 
has_many :carts, through: :user_carts
has_many :comments, through: :product_comments



 validates :name, uniqueness: true
end
