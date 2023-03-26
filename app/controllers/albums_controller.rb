class AlbumsController < ApplicationController

  def index
    @photos = Album.all
  end

  def new
    @siori = Siori.find(params[:siori_id])
    @schedule = Schedule.find(params[:schedule_id])
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
  end

  private
  def album_params
    params.require(:album).permit(:image, :siori_id, :schedule_id).merge(siori_id: params[:siori_id], schedule_id: params[:schedule_id])
  end

end
