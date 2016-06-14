class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :genre, null: false, limit: 8

      t.timestamps null: false
    end
  end
end
