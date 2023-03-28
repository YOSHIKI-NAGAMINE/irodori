class AchevementsController < ApplicationController

  def new
    @achevement = Achevement.new
  end

  def create
    @achevement = Achevement.create(achevement_params)
    redirect_to "/users/#{current_user.id}"
  end


  private
  def achevement_params
    params.require(:achevement).permit(:goal_number, :goal).merge(user_id: params[:user_id])
  end

end
