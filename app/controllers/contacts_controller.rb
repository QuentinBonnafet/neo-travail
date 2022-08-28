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

    if @contact.save
      flash[:notice] = "Votre message a bien été envoyé"
      # redirect_to user_path(current_user)
    else
      flash[:error] = "Une erreur s'est produite"
      render :new
    end
  end

  # def contact
  #   @contact_email = params[:email]
  # end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

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
end
