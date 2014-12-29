class AnimeSearchesController < ApplicationController
	
	

	def index
		@anime_search = AnimeSearch.all
		@genre = Genre.all

	end

	def new
		@anime_search = AnimeSearch.new

		# @anime_search = AnimeSearch.all
		@genres = Genre.all

	end

	def create
		search = AnimeSearch.new(search_params)
		anime  = search.query_ann
		
		redirect_to anime
	end

	private

	def search_params
		params.require(:anime_search).permit(:search_query)
	end
end
