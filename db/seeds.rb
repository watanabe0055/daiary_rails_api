# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Diary.create!(user_id: '1',emotion_id: '1',diary_hashtag_id: '1',title: 'test',content: 'test_text',is_deleted: 'false',created_at: ' 2021-04-04 15:01:19',updated_at: ' 2021-04-04 15:01:19')
#Diary.create!(user_id: '1',emotion_id: '1',diary_hashtag_id: '1',title: 'test',content: 'test_text',is_deleted: 'false',created_at: ' 2021-04-04 15:01:19',updated_at: ' 2021-04-04 15:01:19')
#Diary.create!(user_id: '1',emotion_id: '1',diary_hashtag_id: '1',title: 'test',content: 'test_text',is_deleted: 'false',created_at: ' 2021-04-04 15:01:19',updated_at: ' 2021-04-04 15:01:19')
#Diary.create!(user_id: '1',emotion_id: '1',diary_hashtag_id: '1',title: 'test',content: 'test_text',is_deleted: 'false',created_at: ' 2021-04-04 15:01:19',updated_at: ' 2021-04-04 15:01:19')
10.times do |number|
  Diary.create(user_id: '1',emotion_id: '1',diary_hashtag_id: '1',title: "title_#{number}",content: "content_#{number}",is_deleted: 'false',created_at: ' 2021-04-04 15:01:19',updated_at: ' 2021-04-04 15:01:19')
end