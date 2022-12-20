class Diary < ApplicationRecord
  belongs_to :user
  belongs_to :emotion
  #バリデーション定義
  validates :title,    length: { in: 1..75 }
  validates :content,    length: { in: 1..4000 }
end
