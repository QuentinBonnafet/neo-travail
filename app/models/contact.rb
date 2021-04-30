class Contact < ApplicationRecord
  validates :email, uniqueness: true, presence: true
end
