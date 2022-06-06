class Admin::AdminsController < ApplicationController
  before_action :set_admin, only: %i[edit update destroy]

  def show
  end

  def index
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      flash[:notice] = "L'admin a été créé avec succès"
      redirect_to params[:continue].present? ? edit_admin_admin_path(@admin) : admin_admins_path
    else
      flash[:error] = "Une erreur s'est produite lors de la création de l'admin"
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @admin.destroy
    flash[:notice] = "L'admin a été supprimé avec succès"
    redirect_to admin_admins_path
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def admin_params
    params
      .require(:admin)
      .permit(
        :email,
        :password,
        :encrypted_password
      )
  end
end
