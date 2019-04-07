class CreateSuccessStories < ActiveRecord::Migration[5.2]
  def change
    create_table :success_stories do |t|
      t.references :user, foreign_key: true
      t.references :objective, foreign_key: true
      t.text :body_json

      t.timestamps
    end
  end
end
