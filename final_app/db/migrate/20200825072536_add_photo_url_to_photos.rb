class AddPhotoUrlToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :photourl, :string
  end
end
