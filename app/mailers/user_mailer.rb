class UserMailer < ApplicationMailer
  default from: 'proxyaddress@gmail.com'
    def send_email(items)
        mail to:      'contact@neotravail.fr',
             from:    items["email"],
             reply_to: items["email"],
             subject: items["subject"],
             body:    items["message"]
    end
end
