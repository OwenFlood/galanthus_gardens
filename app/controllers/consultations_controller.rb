class ConsultationsController < ApplicationController
  def new_consultation
    consultation = {
      consultant_owner: params[:name],
      consultant_email: params[:email],
      consultant_request: params[:body]
    }
    ConsultationMailer.new_consultation(consultation).deliver_later

    redirect_to home_index_path, consulation_sent: true, notice: "Thank you for contacting us, we will get back to you as soon as possible"
   end
end
