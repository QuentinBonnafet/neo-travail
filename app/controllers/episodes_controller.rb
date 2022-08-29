class EpisodesController < ApplicationController
  def index
    @episodes = Epiosde.all.order(created_at: :desc).limit(3)
  end
end
