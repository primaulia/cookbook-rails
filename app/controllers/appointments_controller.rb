class AppointmentsController < ApplicationController
  def new
    @salon_service = SalonService.find(params[:salon_service_id])
    @appointment = Appointment.new
  end

  def create
    @salon_service = SalonService.find(params[:salon_service_id])
    appointment = Appointment.new(appointment_params)
    appointment.salon_service = @salon_service
    appointment.status = 'pending'
    
    if appointment.save
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: "#{@salon_service.name} for #{appointment.pet.name}",
          amount: @salon_service.price_cents,
          currency: 'usd',
          quantity: 1
        }],
        success_url: salon_url(@salon_service.salon), #where if payment is processed
        cancel_url: salon_url(@salon_service.salon) #where if payment is declined
      )

      redirect_to session.url
    else
      
    end

  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :pet_id)
  end
end
