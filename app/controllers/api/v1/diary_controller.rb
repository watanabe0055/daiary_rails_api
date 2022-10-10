module Api
  module V1
    class DiaryController < ApplicationController

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
      
    end
  end
end
