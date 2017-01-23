class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  has_many :games
 
  def score
    Game.where(user_id: id).sum("user_score")
  end
end
