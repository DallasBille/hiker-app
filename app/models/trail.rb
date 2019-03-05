class Trail < ApplicationRecord
    has_many :user_trails
    has_many :users, through: :user_trails
    has_many :lists
    has_many :user_lists, through: :lists, source: :user
    belongs_to :national_park
end
