class List < ApplicationRecord
    belongs_to :user
    belongs_to :trail
    validates :user_id, uniqueness: {scope: :trail_id}
end
