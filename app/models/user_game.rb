class UserGame < ApplicationRecord
  belongs_to :user
  belongs_to :game
  # enum direction: [:north, :south, :east, :west]
end
