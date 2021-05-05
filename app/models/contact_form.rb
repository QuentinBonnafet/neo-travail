class ContactForm < MailForm::Base
  attribute :name, validate: true
  attribute :email
  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message
  
  # validates :email, 
  # :presence => :true,
  # :format => { 
  #   :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
  #   :message => "must be a valid email address"
  # }
  # validates :message, :presence => :true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "Contact Form Néotravail",
      to: "quentin.bonnafet@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
