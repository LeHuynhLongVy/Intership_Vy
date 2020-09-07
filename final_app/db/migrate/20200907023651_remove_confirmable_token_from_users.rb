class RemoveConfirmableTokenFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :confirmable_token, :string
  end
end
