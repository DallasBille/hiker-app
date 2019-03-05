class User < ApplicationRecord
    has_many :user_trails
    has_many :trails, through: :user_trails
    has_many :lists
    has_many :trail_lists, through: :lists, source: :trail

    validates :username, { presence: true, uniqueness: true }
    has_secure_password

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
