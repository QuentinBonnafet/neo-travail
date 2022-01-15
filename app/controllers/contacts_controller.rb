class ContactsController < ApplicationController
  # before_action only: :create

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user if current_user.present?

    if @contact.save
      flash[:notice] = "Le contact a été créé avec succès"
      # redirect_to user_path(current_user)
    else
      flash[:error] = "Une erreur s'est produite lors de la création du contact"
      render :new
    end
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
