class AnimeController < ApplicationController
  def show
  	@anime = Anime.find(params[:id])
  end



  def create
    @anime = Admin.new
  end

  private

  def anime_params
    params.require(:anime).permit(:title, :alt_title, :synopsis, :ann_rating, :ann_id, :episodes, :created_at , :updated_at)
  end
end
