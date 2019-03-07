class User < ApplicationRecord
    has_many :user_trails
    has_many :trails, through: :user_trails
    has_many :lists
    has_many :trail_lists, through: :lists, source: :trail

    validates :username, :first_name, :last_name, { presence: true, uniqueness: true }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    has_secure_password


    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
