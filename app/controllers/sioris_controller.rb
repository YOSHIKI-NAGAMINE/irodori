class SiorisController < ApplicationController
  def index
    @user = User.find(current_user.id)
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
    @message = Message.new
    @messages = Message.where(siori_id: params[:id]).order('created_at DESC')
    @siori = Siori.find(params[:id])
    @schedule = Schedule.where(siori_id: params[:id]).order('time')
    @users = User.find(@siori.user_ids)
  end


  private
  def siori_params
    params.require(:siori).permit(:title, :image, :start_day, :day, user_ids: [])
  end
end
