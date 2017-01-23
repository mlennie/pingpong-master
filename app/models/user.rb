class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  has_many :games
  validates_presence_of :date_played
  validates_presence_of :oponent_id
  validates_presence_of :user_score
  validates_presence_of :oponent_score
  validates_presence_of :user_id
end
