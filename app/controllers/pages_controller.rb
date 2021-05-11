class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @episodes = Episode.last(3).reverse
  end

  def contact
  end

  def mentions_legales
  end

  def about
  end

  
end
