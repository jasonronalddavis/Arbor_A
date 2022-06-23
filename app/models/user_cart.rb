class UserCart < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :cart, optional: true
    belongs_to :product, optional: true
end
