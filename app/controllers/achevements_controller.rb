class AchevementsController < ApplicationController

  def new
    @achevement = Achevement.new
  end

  def create
    @achevement = Achevement.new(achevement_params)
    if @achevement.save
      redirect_to "/users/#{current_user.id}"
    else
      render action: :new
    end
  end

  def edit
    @achevement = Achevement.find(params[:id])
  end

  def update
    achevement = Achevement.find(params[:id])
    achevement.update(achevement_params)
    redirect_to "/users/#{current_user.id}"
  end

  def destroy
    achevement = Achevement.find(params[:id])
    achevement.destroy
    redirect_to "/users/#{current_user.id}"
  end

  private
  def achevement_params
    params.require(:achevement).permit(:image, :goal_number, :goal, :fraction_top, :fraction_bottom).merge(user_id: params[:user_id])
  end

end
