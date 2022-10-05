class CreateDiaryHashtags < ActiveRecord::Migration[7.0]
  def change
    create_table :diary_hashtags do |t|
      t.string :diary_id
      t.string :hashtag_id
      t.boolean :is_deleted, default: false, null: false

      t.timestamps
    end
  end
end
