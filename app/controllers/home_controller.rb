class HomeController < ApplicationController
  def index
  	@anime_search = AnimeSearch.new
  	@anime = Anime.all
  end
end
