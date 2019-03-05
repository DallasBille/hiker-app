class Trail < ApplicationRecord
    has_many :user_trails
    has_many :users, through: :user_trails
    has_many :lists
    has_many :users, through: :lists
    belongs_to :national_park
end
