class CreateInitiatives < ActiveRecord::Migration[5.2]
  def change
    create_table :initiatives do |t|
      t.string :title
      t.references :objective, foreign_key: true
      t.integer :score, :limit => 2

      t.timestamps
    end
  end
end
