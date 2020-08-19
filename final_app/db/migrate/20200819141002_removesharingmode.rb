class Removesharingmode < ActiveRecord::Migration[6.0]
  def change
    remove_column :photos, :sharingmode, :boolean
  end
end
