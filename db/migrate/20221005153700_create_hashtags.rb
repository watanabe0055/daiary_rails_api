class CreateHashtags < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags do |t|
      t.string :hashtag, null: false
      t.string :diary_hashtag_id
      t.boolean :is_deleted, default: false, null: false

      t.timestamps
    end
  end
end
