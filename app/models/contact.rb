class Contact < ApplicationRecord
  before_validation { self.email = email.downcase }
  validates :first_name, :last_name, :email, :message, presence: true
  # after_create :send_contact

  def full_name
    return if [:first_name, :last_name].any? { |attribute| !respond_to?(attribute) }

    [first_name, last_name].reject(&:blank?).join(" ")
  end

  def full_name_reverse
    return if [:first_name, :last_name].any? { |attribute| !respond_to?(attribute) }

    [last_name, first_name].reject(&:blank?).join(" ")
  end
end
