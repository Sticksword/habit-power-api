class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :occupation
      t.string :about
      t.string :school
      t.string :company
      t.string :username

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
