class UserTrail < ApplicationRecord
    belongs_to :user
    belongs_to :trail

    validates :review, presence: true
    validates :user_id, uniqueness: { scope: :trail_id, message: 'You have already reviewed this trail' }
end
