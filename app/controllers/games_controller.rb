class GamesController < ApplicationController

  def create
    Game.create(game_params)
    flash[:notice] = 'Successfully created log'
    redirect_to games_path
  end

  def index

    if params[:for_user]
      @games = Game.where(user_id: current_user.id)
    else
      @games = Game.all
    end

  end

  private

    def game_params
      params.require(:game).permit(:date_played, :oponent_id, :user_score, :oponent_score, :user_id)
    end
end
