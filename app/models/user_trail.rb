class UserTrail < ApplicationRecord
    belongs_to :user
    belongs_to :trail

    validates :review, {presence: true}
end
