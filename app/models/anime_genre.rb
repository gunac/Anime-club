class AnimeGenre < ActiveRecord::Base	
	belongs_to :genre
	belongs_to :anime
end
