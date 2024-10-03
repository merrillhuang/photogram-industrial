class UsersController < ApplicationController
  before_action :get_user, only: [:show, :liked, :feed, :discover, :followers, :following]

  def show
  end

  def liked
  end

  def feed
  end

  def discover
  end

  def follwers
  end

  def following
  end

  private

  def get_user
    @user = User.find_by!(username: params.fetch("username"))
  end
end
