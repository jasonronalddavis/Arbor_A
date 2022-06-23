class UserCategory < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :category, optional: true
    belongs_to :image, optional: true
    belongs_to :product, optional: true
end
