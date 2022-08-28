class ContactMailer < ApplicationMailer
  default from: 'kyudev@protonmail.com'

  def contact_created
    # @first_name = params[:first_name]
    # @last_name = params[:last_name]
    # @email = params[:email]
    # @message = params[:message]
    @contact = params[:contact]
    mail(to: 'quentin.bonnafet@gmail.com', subject: 'Contact')
  end
end
