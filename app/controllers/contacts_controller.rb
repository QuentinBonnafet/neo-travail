class ContactsController < ApplicationController
  # before_action only: :create

  def new
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user if current_user.present?
    if contact.save
      redirect_to :root
    else
      flash[:error] = "Une erreur s'est produite lors de la création du contact"
      render :new
    end
  end

  def contact
    @contact_email = params[:email]
  end

  private

  def contact_params
    params
      .require(:contact)
      .permit(
        :last_name,
        :first_name,
        :email,
        :message
      )
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
