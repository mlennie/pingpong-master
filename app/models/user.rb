class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  has_many :games

  def score
    own_games = Game.where(user_id: id).sum("user_score")
    oponent_games = Game.where(oponent_id: id).sum("oponent_score")
    return own_games + oponent_games
  end

  def other_users
    User.where.not(id: id)
  end
end
