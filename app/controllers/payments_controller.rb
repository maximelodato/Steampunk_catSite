class PaymentsController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    # Logique pour gérer la création d'un paiement
    @message = Message.new(message_params)
    if @message.save
      #envoi d'un mail de confirmation à l'utilisateur
      PaymentMailer.payment_confirmation(@message).deliver_now

      #envoi d'un mail d'une nouvelle commande à l'administrateur
      PaymentMailer.new_order_notification(@message).deliver_now
      
      flash[:notice] = "Paiement effectué avec succès."
      redirect_to root_path
    else
      flash[:alert] = "Erreur lors du traitement du paiement."
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end