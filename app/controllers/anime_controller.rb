class AnimeController < ApplicationController
  def show
  	@anime = Anime.find params[:id]
  end
end
