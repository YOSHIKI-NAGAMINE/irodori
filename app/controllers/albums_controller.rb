class AlbumsController < ApplicationController

  def index
    @siori = params[:siori_id]
    @schedule = params[:schedule_id]
    @photos = Album.where(schedule_id: @schedule)
  end

  def new
    @siori = params[:siori_id]
    @schedule = params[:schedule_id]
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
    redirect_to action: :index
  end

  private
  def album_params
    params.require(:album).permit(:image, :siori_id, :schedule_id).merge(siori_id: params[:siori_id], schedule_id: params[:schedule_id])
  end

end
