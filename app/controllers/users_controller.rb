class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @siori = Siori.all
    @achevements = Achevement.all.order("goal_number")
  end


end
