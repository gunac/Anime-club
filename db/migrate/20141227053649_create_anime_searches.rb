class CreateAnimeSearches < ActiveRecord::Migration
  def change
    create_table :anime_searches do |t|
      t.string :search_query

      t.timestamps null: false
    end
  end
end
