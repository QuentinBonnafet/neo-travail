class ContactMailer < ApplicationMailer
  
  default from: 'quentin.bonnafet@gmail.com'

    def contact()
        @first_name = params:[first_name]
        @last_name = params:[last_name]
        @email = params:[email]
        @message = params:[message]
        mail(to: 'quentin.bonnafet@gmail.com', subject: 'Contact')
    end

end
