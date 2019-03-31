class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :title
      t.string :description
      t.references :user, foreign_key: true
      t.integer :score, :limit => 2
      t.integer :length, :limit => 2

      t.timestamps
    end
  end
end
