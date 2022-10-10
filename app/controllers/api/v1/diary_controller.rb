module Api
  module V1
    class DiaryController < ApplicationController

      def index
          #allDairy = Diary.joins(:user).where(is_deleted: false).order(created_at: "desc")
          #render status: 200, json: { diary: allDairy}
          if current_api_v1_user
            user = current_api_v1_user.id
            allDairy = Diary.joins(:user).where(user_id: user,is_deleted: false).order(created_at: "desc")
            render status: 200, json: { diary: allDairy}
          else
            render json: { is_login: false, message: "ユーザーが存在しません" }
          end
        
        
      end
      
    end
  end
end
