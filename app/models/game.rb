class Game < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :date_played
  validates_presence_of :oponent_id
  validates_presence_of :user_score
  validates_presence_of :oponent_score
  validates_presence_of :user_id

  def win?
    user_score > oponent_score
  end

  def oponent
    User.find(oponent_id)
  end
end
