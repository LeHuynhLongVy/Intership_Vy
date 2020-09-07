class ChangeEmailType2InUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :email, from: nil, to: ""
  end
end
