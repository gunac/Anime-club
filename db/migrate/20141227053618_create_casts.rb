class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.integer :anime_id
      t.string :role
      t.string :name
      t.string :lang

      t.timestamps null: false
    end
  end
end
