class AchevementsController < ApplicationController

  def new
    @achevement = Achevement.new
  end

  def create
    @achevement = Achevement.create(achevement_params)
    redirect_to "/users/#{current_user.id}"
  end

  def edit
    @achevement = Achevement.find(params[:id])
  end

  def update
    achevement = Achevement.find(params[:id])
    achevement.update(achevement_params)
    redirect_to "/users/#{current_user.id}"
  end

  private
  def achevement_params
    params.require(:achevement).permit(:image, :goal_number, :goal).merge(user_id: params[:user_id])
  end

end
