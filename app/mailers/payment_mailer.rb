# app/mailers/payment_mailer.rb
class PaymentMailer < ApplicationMailer
    def payment_confirmation(message)
      @message = message
      mail(to: @message.email, subject: 'Confirmation de commande')
    end
  
    def new_order_notification(message)
      @message = message
      mail(to: 'contactus@steampunkcat.online', subject: 'Nouvelle commande passée')
    end
  end
  