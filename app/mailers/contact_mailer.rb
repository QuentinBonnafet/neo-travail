class ContactMailer < ApplicationMailer
  default from: 'quentin.bonnafet@gmail.com'

  def contact(message)
    # @name = name
    # @email = email
    @message = message
    mail(to: 'quentin.bonnafet@gmail.com', subject: 'Contact')
  end
end
