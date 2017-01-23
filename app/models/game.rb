class Game < ActiveRecord::Base
  belongs_to :user

  def win?
    user_score > oponent_score
  end
end
