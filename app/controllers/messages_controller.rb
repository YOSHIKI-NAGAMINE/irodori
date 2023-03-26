class MessagesController < ApplicationController

  def create
    binding.pry
    @message = Message.create(message_params)
    binding.pry
    redirect_to "/sioris/#{@message.siori_id}"
  end



  private
  def message_params
    params.require(:message).permit(:content).merge(siori_id: params[:siori_id],user_id: current_user.id)
  end
end
