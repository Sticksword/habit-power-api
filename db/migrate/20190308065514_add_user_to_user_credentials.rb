class AddUserToUserCredentials < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_credentials, :user, foreign_key: true
  end
end
