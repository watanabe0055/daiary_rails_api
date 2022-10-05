class CreateEmotions < ActiveRecord::Migration[7.0]
  def change
    create_table :emotions do |t|
      t.string :emotion, null: false
      t.boolean :is_deleted, default: false, null: false

      t.timestamps
    end
  end
end
