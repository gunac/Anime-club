class CreateAnimeGenres < ActiveRecord::Migration
  def change
    create_table :anime_genres do |t|
      t.integer :anime_id
      t.integer :genre_id

      t.timestamps null: false
    end

    add_index :anime_genres, [:anime_id, :genre_id], unique: true
  end
end
