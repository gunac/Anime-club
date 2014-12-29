class Anime < ActiveRecord::Base
	self.table_name = 'anime'
	
	has_many :casts
	has_many :staff
	has_many :images
	has_many :anime_genres
	has_many :genres, through: :anime_genres
 
	scope :top_rated , lambda { order("anime.ann_rating DESC")}
 
end
