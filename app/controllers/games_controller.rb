class GamesController < ApplicationController

  def create
    Game.create(game_params)
  end

  def index

  end

  private

    def game_params
      params.require(:game).permit(:date_played, :oponent_id, :user_score, :oponent_score, :user_id)
    end
end
