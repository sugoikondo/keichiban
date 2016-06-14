class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, null: false, limit: 32
      t.decimal :longitude, precision: 9, scale: 6, null: false
      t.decimal :latitude, precision: 9, scale: 6, null: false
      t.string :postcode, null: false, limit: 8
      t.string :address, limit: 256
      t.string :about, limit: 256

      t.timestamps null: false
    end
  end
end
