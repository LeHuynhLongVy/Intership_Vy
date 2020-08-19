class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :description
      t.integer :photo_count

      t.timestamps
    end
  end
end
