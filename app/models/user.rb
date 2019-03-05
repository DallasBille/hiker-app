class User < ApplicationRecord
    has_many :user_trails
    has_many :trails, through: :user_trails
    has_many :lists
    has_many :trail_lists, through: :lists, source: :trail
end
