class Admin::EpisodesController < Admin::BaseController
  before_action :set_episode, only: %i[edit update destroy]

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)

    if @episode.save
      flash[:notice] = "L'épisode a bien été ajouté"
      redirect_to admin_episodes_path
    else
      flash[:error] = "Une erreur est survenue lors de l'ajout de l'épisode"
      render :new
    end
  end

  def edit
  end

  def update
    if @episode.update(episode_params)
      flash[:notice] = "L'épisode a été mise à jour avec succès"
      redirect_to admin_episodes_path
    else
      flash[:error] = "Une erreur s'est produite lors de la mise à jour de l'épisode"
      render :edit
    end
  end

  def destroy
    begin
      flash[:notice] = "L'épisode a bien été supprimée" if @episode.destroy
    rescue ActiveRecord::DeleteRestrictionError
      flash[:error] = "Cet épisode n'a pas pu être supprimé"
    end
    redirect_to admin_episodes_path
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params
      .require(:episode)
      .permit(
        :title,
        :description,
        :publication_date,
        :link_url
      )
  end
end
