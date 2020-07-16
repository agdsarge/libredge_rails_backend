class AddDirectionToUserGames < ActiveRecord::Migration[6.0]

    def up
        execute <<-SQL
        CREATE TYPE seat_direction AS ENUM ('north', 'south', 'east', 'west');
        SQL
        add_column :user_games, :direction, :seat_direction
    end
    def down
        remove_column :projects, :status
        execute <<-SQL
        DROP TYPE seat_direction;
        SQL
    end
end
