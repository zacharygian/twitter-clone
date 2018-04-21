class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :content
      t.datetime :created_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
