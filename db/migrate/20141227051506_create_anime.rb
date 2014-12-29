class CreateAnime < ActiveRecord::Migration
  def change
    create_table :anime do |t|
      t.string :title
      t.string :alt_title
      t.text :synopsis
      t.integer :ann_id
      t.integer :ann_rating
      t.integer :episodes

      t.timestamps null: false
    end
  end
end
