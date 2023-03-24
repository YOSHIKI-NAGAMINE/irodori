class SchedulesController < ApplicationController

  def new
    @siori = Siori.find(params[:siori_id])
    @schedule = Schedule.new
  end

  def create
    @siori = params[:siori_id]
    @schedule = Schedule.create(schedule_params)
    redirect_to "/sioris/#{@siori}"
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to "/sioris/#{params[:siori_id]}"
  end


  private
  def schedule_params
    params.require(:schedule).permit(:day, :time, :title, :image, :place, :map_link, :memo).merge(siori_id: params[:siori_id])
  end
end
