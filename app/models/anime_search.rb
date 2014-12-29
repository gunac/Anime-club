class AnimeSearch < ActiveRecord::Base
  def query_ann
    ann_anime = ANN_Wrapper.fetch_anime('~' + search_query)
    anime = Anime.where(ann_id: ann_anime.id).first_or_initialize
    
    if anime.new_record?
      anime = Anime.new({
        title: ann_anime.title.first,
        alt_title: ann_anime.alt_titles['JA'].first,
        synopsis: ann_anime.synopsis.first,
        ann_id: ann_anime.id,
        ann_rating: ann_anime.ratings.first.weighted,
        episodes: ann_anime.num_episodes
      })

      ann_anime.genres.each do |g|
        anime.genres << Genre.where(name: g).first_or_create
      end

      ann_anime.cast.each do |c|
        anime.casts << Cast.new(role: c.role, name: c.name, lang: c.lang)
      end

      ann_anime.staff.each do |s|
        anime.staff << Staff.new(task: s.task, name: s.name)
      end

      ann_anime.images.each do |i|
        anime.images << Image.new(src: i.src, width: i.width, height: i.height)
      end
      
      anime.save      
    end
    anime
  end
end
