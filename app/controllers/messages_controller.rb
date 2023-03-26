class MessagesController < ApplicationController

  def create
    @message = Message.create(message_params)
    redirect_to "/sioris/#{@message.siori_id}"
  end



  private
  def message_params
    params.require(:message).permit(:content, :image).merge(siori_id: params[:siori_id],user_id: current_user.id)
  end
end
