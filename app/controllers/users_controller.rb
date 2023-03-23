class UsersController < ApplicationController
  before_action :set_user, only: [:show]


def show
  @user = User.find(current_user.id)
  @siori = Siori.all
end

private

  def set_user
  end
end
