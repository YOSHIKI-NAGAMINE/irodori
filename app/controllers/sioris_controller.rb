class SiorisController < ApplicationController
  def index
  end

  def new
    @siori = Siori.new
  end

  def create
    @siori = Siori.create(siori_params)
  end

  private
  def siori_params
    params.require(:siori).permit(:title)
  end
end
