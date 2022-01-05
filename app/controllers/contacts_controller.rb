class ContactsController < ApplicationController
  # before_action only: :create

  def create
    @contact = Contact.new
    @contact.user = current_user if current_user.present?
  end
end
