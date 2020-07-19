require_relative "./word.rb"

class Game < ApplicationRecord
    has_many :messages
    has_many :user_games
    has_many :users, through: :user_games
    after_initialize :generate_string, :zero_score, :incomplete


    def self.open_games
        self.where(completed: false).filter{|g| g.users.count < 4 }
    end

    private

    def generate_string
        until self.memorable_string_name
            new_str = Word.generate
            unless Game.find_by(memorable_string_name: new_str)
                self.memorable_string_name = new_str
            end
        end
    end

    def zero_score
        self.final_score = 0 unless self.final_score
    end

    def incomplete
        self.completed = false unless self.completed
    end

end
