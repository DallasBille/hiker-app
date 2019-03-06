class Trail < ApplicationRecord
    has_many :user_trails
    has_many :users, through: :user_trails
    has_many :lists
    has_many :user_lists, through: :lists, source: :user
    belongs_to :national_park

    def average_user_rating
        rating_array = []
        ut = self.user_trails.each{|ut| rating_array << ut.rating}
        rating_array.inject{ |sum, el| sum + el }.to_f / rating_array.size
    end

    def trail_rating
        return "#{average_user_rating}/10"
    end
end
