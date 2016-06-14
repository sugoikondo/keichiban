class CreatePlacesGenres < ActiveRecord::Migration
  def change
    create_table :places_genres do |t|
      t.references :place, index: true, foreign_key: true, null: false
      t.references :genre, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
