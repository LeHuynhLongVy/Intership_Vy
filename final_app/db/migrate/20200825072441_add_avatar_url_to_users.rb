class AddAvatarUrlToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatarurl, :string
  end
end
