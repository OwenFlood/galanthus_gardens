class ConsultationMailer < ApplicationMailer
  def new_consultation(consultation)
    @consultant_name = consultation[:consultant_owner]
    @consultant_email = consultation[:consultant_email]
    @consultation_body = consultation[:consultant_request]

    mail(to: ENV["main_email"], subject: "You got a new consultation!")
  end
end
