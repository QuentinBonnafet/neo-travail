class ContactForm < MailForm::Base
  attribute :name, validate: true
  attribute :email
  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "My Contact Form",
      to: "quentin.bonnafet@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
