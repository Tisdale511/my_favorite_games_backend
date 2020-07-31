class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games, include: [:comments]
    end

    def show
        game = Game.find(params[:id])
        render json: game, include: [:comments]
    end

    def new
        game = Game.new
    end

    def create
        game = Game.create(name: params[:game][:name], image: params[:game][:image])
        render json: game, include: [:comments]
        # byebug
    end

    def delete
        game = Game.find(params[:id])
        game.destroy
        render json: ("The game has been deleted.").to_json
    end

end
