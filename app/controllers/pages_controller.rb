
class PagesController < ApplicationController
    def about
    end

    def contact
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        if @message.save
          # Traitez ici l'enregistrement du message
          redirect_to root_path, notice: 'Message envoyé avec succès.'
        else
          render :contact
        end
    end

        private

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
  