class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :anime_id
      t.string :task
      t.string :name

      t.timestamps null: false
    end
  end
end
