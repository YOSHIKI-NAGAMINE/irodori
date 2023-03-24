class SchedulesController < ApplicationController

  def new
    @siori = params[:siori_id]
    @schedule = Schedule.new
  end

  def create
    @siori = params[:siori_id]
    @schedule = Schedule.create(schedule_params)
    redirect_to "/sioris/#{@siori}"
  end


  private
  def schedule_params
    params.require(:schedule).permit(:time_id, :title, :image, :place, :map_link, :memo).merge(siori_id: params[:siori_id])
  end
end
