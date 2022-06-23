class ImageCategory < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :comment, optional: true
    belongs_to :product, optional: true
    belongs_to :category, optional: true
    belongs_to :image, optional: true
end
