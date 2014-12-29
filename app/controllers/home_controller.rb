class HomeController < ApplicationController
  def index
  	@anime_search = AnimeSearch.new
  	@anime = Anime.top_rated.first(5)
  end
end
