class Addtophoto < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :sharingmode, :boolean
  end
end
