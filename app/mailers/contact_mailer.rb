class ContactMailer < ApplicationMailer
  default from: 'proxyaddress@gmail.com'

    def contact(message)
        # @name = name
        # @email = email
        @message = message
        mail(to: 'contact@neotravail.fr', subject: 'Contact')
    end
end
