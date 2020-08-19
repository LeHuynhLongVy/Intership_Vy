class RemovephotocountfromAlbum < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :photo_count, :integer
  end
end
