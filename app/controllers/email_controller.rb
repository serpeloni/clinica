class EmailController < ApplicationController
  before_action :set_patient

  def index
  end

  def send_email
    PatientMailer.with(patient: @patient, message: params[:message]).send_message.deliver_now
    redirect_to patients_url
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
