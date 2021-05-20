class ContactsController < ApplicationController

  def create
    contact = Contact.new(contact_params)
    if contact.save
      redirect_to :root
    else
      render "pages/contact"
    end
  end

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
