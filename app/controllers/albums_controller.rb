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

  def destroy
    photo = Album.find(params[:id])
    photo.destroy
    redirect_to action: :index
  end

  def edit
    @siori = params[:siori_id]
    @schedule = params[:schedule_id]
    @album = Album.find(params[:id])
  end

  def update
    photo = Album.find(params[:id])
    photo.update(album_params)
    redirect_to action: :index
  end

  private
  def album_params
    params.require(:album).permit(:image, :comment).merge(siori_id: params[:siori_id], schedule_id: params[:schedule_id])
  end

end
