class HomeController < ApplicationController
  def index
    @users = User.all.to_a.sort_by(&:score).reverse
  end

  def history
  end

  def log
    @current_user = current_user
  end
end
