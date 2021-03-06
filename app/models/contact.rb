class Contact < ApplicationRecord
  before_validation { self.email = email.downcase }
  validates :first_name, :last_name, :email, :message, presence: true
end
