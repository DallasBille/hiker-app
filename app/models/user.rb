class User < ApplicationRecord
    has_many :user_trails
    has_many :trails, through: :user_trails
    has_many :lists
    has_many :trails, through: :lists

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

end
