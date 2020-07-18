class Api::V1::GamesController < ApplicationController
    def index
        render json: Game.all
    end

    def show
        render json: specific_game.to_json(except: [:created_at, :updated_at], include: [{user_games: {only: :direction, include: {user: {except: [:created_at, :updated_at, :password_digest, :email, :bio]}}}}, {messages: {only: :body, include: {user: {only: :username}}}}])
    end

    private

    def specific_game
        if params[:id].match?(/^\d/)
            Game.find(params[:id])
        else
            Game.find_by(memorable_string_name: params[:id])
        end
    end

end


# {except: [:created_at, :updated_at, :game_id]}
