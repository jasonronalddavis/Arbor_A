class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

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

# validates_presence_of :name
# validates_presence_of :password
# validates_length_of :name, :within => 6..20, :too_long => "needs fewer than 20 character", :too_short => "needs at leat 6 characters"
validates :name, uniqueness: true
#validates_uniqueness_of :name, case_sensitive: true
end
