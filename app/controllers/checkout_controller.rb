# app/controllers/checkout_controller.rb
class CheckoutController < ApplicationController
    def create
      @total = params[:total].to_d
      @event_id = params[:event_id]
      @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          price_data: {
            currency: 'eur',
            unit_amount: (@total * 100).to_i,
            product_data: {
              name: 'Rails Stripe Checkout',
            },
          },
          quantity: 1
        }],
        mode: 'payment',
        success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
        cancel_url: checkout_cancel_url,
        metadata: { event_id: @event_id } # Ajoutez les métadonnées ici
      )
      redirect_to @session.url, allow_other_host: true
    end
  
    def success
        @session = Stripe::Checkout::Session.retrieve(params[:session_id])
        Rails.logger.debug("Session: #{@session.to_json}")
        
        if @session.metadata.present?
          @event_id = @session.metadata['event_id']
        else
          Rails.logger.error("Metadata is missing in the session")
          @event_id = nil
        end
        
        @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
      end
    
      def cancel
      end
  end
  