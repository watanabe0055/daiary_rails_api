class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.string :user_id, null: false
      t.string :emotion_id
      t.string :diary_hashtag_id
      t.string :title, null: false
      t.text :content, null: false
      t.boolean :is_deleted, default: false, null: false

      t.timestamps
    end
  end
end
