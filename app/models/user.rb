class User < ApplicationRecord
    has_secure_password
    has_many :messages
    has_many :user_games
    has_many :games, through: :user_games
    before_save :default_rating

    validates :username, uniqueness: true

    private
    def default_rating
        self.rating = 1500 unless self.rating
    end 

end
