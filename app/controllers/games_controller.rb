class GamesController < ApplicationController

  def create
    if !Game.validate_score(game_params)
      flash[:error] = 'Score needs to be at least 21 and you must ' +
                       'win by 2 point margin'
      redirect_to log_path
    else
      current_user.games.create(game_params)
      flash[:notice] = 'Successfully created log'
      redirect_to games_path
    end
  end

  def index
    @games = Game.where(user_id: current_user.id)
  end

  private

    def game_params
      params.require(:game).permit(:date_played, :oponent_id, :user_score, :oponent_score, :user_id)
    end
end
