class Emotion < ApplicationRecord
  has_many :diaries, foreign_key: 'emotion_id'
end
