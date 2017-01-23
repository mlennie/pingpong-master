class GamesController < ApplicationController

  def create
    Game.create(game_params)
    flash[:notice] = 'Successfully checked in'
    redirect_to games_path
  end

  def index

    if params[:user_id]
      @games = Game.all
    else
      @games = Game.find_by(user_id: params[:user_id])
    end

  end

  private

    def game_params
      params.require(:game).permit(:date_played, :oponent_id, :user_score, :oponent_score, :user_id)
    end
end
