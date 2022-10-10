module Api
  module V1
    class DiaryController < ApplicationController

        #日記一覧API
      def index
          if current_api_v1_user
            user = current_api_v1_user.id
            allDairy = Diary.joins(:user).select('id','emotion_id','diary_hashtag_id','title','content').where(user_id: user,is_deleted: false).order(created_at: "desc")
            if allDairy.length > 1
              render status: 200, json: { diary: allDairy}
            else
              render json: { is_login: false, message: "日記が存在しません" }
            end
          else
            render json: { is_login: false, message: "ユーザーが存在しません" }
          end
      end
      
      #日記詳細API
      def show
        if current_api_v1_user
          diary = Diary.find(params[:id])
          #diaryとuserでidの型が違うから、to_sで合わせてます
          if diary.id.blank? == false && diary.is_deleted == false && diary.user_id == current_api_v1_user.id.to_s
            render status: 200, json: { diary: diary}
          elsif diary.is_deleted == true
            render status: 400, json: { status: 'deleted_diary_data', message: '削除済みのデータです' }
          else
            render status: 400, json: { status: 'deleted_diary_data', message: '閲覧権限のないデータです' }
          end
        else
          render json: { is_login: false, message: "ユーザーが存在しません" }
        end
      end

    end
  end
end
