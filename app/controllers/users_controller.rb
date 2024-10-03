class UsersController < ApplicationController
  before_action :get_user, only: [:show, :liked]

  def show
  end

  def liked
  end

  private

  def get_user
    @user = User.find_by!(username: params.fetch("username"))
  end
end
