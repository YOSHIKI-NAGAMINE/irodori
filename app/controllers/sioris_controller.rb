class SiorisController < ApplicationController
  def index
    @sioris = Siori.all
  end

  def new
    @siori = Siori.new
  end

  def create
    @siori = Siori.create(siori_params)
    redirect_to "/sioris/#{@siori.id}"
  end

  def show
    @siori = Siori.find(params[:id])
    @schedule = Schedule.where(siori_id: params[:id]).order('time')
  end


  private
  def siori_params
    params.require(:siori).permit(:title, :image, :start_day, :day, user_ids: [])
  end
end
