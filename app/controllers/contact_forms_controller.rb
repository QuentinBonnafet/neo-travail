class ContactFormsController < ApplicationController
  # def new
  #   @contact_form = ContactForm.new
  # end

  def create
    @contact_form = ContactForm.new()
    @contact_form.name = params[:name]
    @contact_form.email = params[:email]
    @contact_form.message = params[:message]
    if @contact_form.deliver
      render json: {message: "Email sent successfully"}
    else
      render json: @contact_form.errors
    end
  end
end
