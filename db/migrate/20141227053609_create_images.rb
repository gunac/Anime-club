class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :anime_id
      t.string :src
      t.integer :height
      t.integer :width

      t.timestamps null: false
    end
  end
end
