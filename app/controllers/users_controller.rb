class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @siori = Siori.all
  end


end
