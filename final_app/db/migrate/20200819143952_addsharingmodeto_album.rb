class AddsharingmodetoAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :sharingmode, :boolean, default:true
  end
end
