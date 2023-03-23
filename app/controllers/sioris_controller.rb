class SiorisController < ApplicationController
  def index
    @sioris = Siori.find[params[:id]]
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
  end


  private
  def siori_params
    params.require(:siori).permit(:title, :image, :start_day, :day)
  end
end
