class RemoveDirectionFromUserGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_games, :direction, :integer
  end
end
