class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :uri
      t.string :description
      t.integer :upvote
      t.integer :downvote
      t.string :user_id

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
