class PatientMailer < ApplicationMailer

    def send_message
        @patient = params[:patient]
        @message = params[:message]
        mail(to: @patient.email, subject: "Mensagem da Clínica")
    end
end
