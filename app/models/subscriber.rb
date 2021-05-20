class Subscriber < ApplicationRecord
  before_validation { self.email = email.downcase }
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: { message: "Vous êtes déjà abonné(e) à notre newsletter" }
end
