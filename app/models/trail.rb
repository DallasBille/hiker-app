class Trail < ApplicationRecord
    has_many :user_trails
    has_many :users, through: :user_trails
    has_many :lists
    has_many :user_lists, through: :lists, source: :user
    belongs_to :national_park

    def trail_rating
        if  user_trails.any?
            rating_array = user_trails.map(&:rating)
            average = rating_array.inject { |sum, el| sum + el }.to_f / rating_array.size
            "#{average.round(1)}/10"
        else
            'This trail has no reviews'
        end
   end
end
