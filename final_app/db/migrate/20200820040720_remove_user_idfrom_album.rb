class RemoveUserIdfromAlbum < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :user_id, :bigint
  end
end
