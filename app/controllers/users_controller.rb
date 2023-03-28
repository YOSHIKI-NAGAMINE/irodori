class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @siori = Siori.all
    @achevements = Achevement.where(user_id: current_user.id)
  end


end
