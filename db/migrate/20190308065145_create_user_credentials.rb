class CreateUserCredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :user_credentials do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
    add_index :user_credentials, :username, unique: true
  end
end
