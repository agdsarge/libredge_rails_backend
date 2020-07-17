class Api::V1::GamesController < ApplicationController
    def index
        render json: Game.all
    end

    def show
        render json: specific_game
    end

    def specific_game
        params[:id].match?(/^\d/) ? Game.find(params[:id]) : Game.find_by(memorable_string_name: params[:id])
    end

end
