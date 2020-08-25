class AddAlbumUrlToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :albumurl, :string
  end
end
