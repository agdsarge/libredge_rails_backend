class UserGame < ApplicationRecord
    belongs_to :user
    belongs_to :game
    # enum direction: [:north, :south, :east, :west]
    validates :direction, :user, :game, presence: true
    validate :no_more_than_four



    private

    def no_more_than_four
        if self.game.user_games.length > 3 # no more than 4 to a game
            errors.add(:user, "you cannot join a full table")
        elsif self.game.user_games.pluck(:direction).include?(self.direction) # no more than 1 to a seat
            errors.add(:user, "this seat is already taken.")
        elsif self.game.users.include?(self.user) # you can't be seated at a table twice!
            errors.add(:user, "you're already playing at this table")
        end
    end

end
