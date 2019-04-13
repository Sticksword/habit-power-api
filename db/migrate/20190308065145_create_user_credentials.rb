class CreateUserCredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :user_credentials do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :user_credentials, :email, unique: true
  end
end
