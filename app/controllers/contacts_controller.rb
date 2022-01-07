class ContactsController < ApplicationController
  # before_action only: :create

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user if current_user.present?
  end

  private

  def contact_params
    params
      .require(:contact)
      .permit(
        :lastname,
        :firstname,
        :email,
        :message
      )
  end
end
