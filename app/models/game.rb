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

  def self.validate_score params
    score_one = params[:user_score].to_i
    score_two = params[:oponent_score].to_i

    at_least_21 = score_one >= 21 || score_two >= 21
    at_least_2_margin = score_one - score_two > 1 || score_two - score_one > 1

    return at_least_21 && at_least_2_margin
  end

end
