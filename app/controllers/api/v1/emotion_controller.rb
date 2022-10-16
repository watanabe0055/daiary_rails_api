module Api
  module V1
    class EmotionController < ApplicationController
      def index
        emotionAll = Emotion.all.where(is_deleted: false).select(:id,:emotion).order(created_at: "desc")
        if current_api_v1_user
          if emotionAll.length > 1
            render json: { status: 'SUCCESS', emotionAll: emotionAll }
          else
            render json: { status: 'Failure Get Emotion Data', message: "エモーションが存在しません" }
          end
        else
          render json: { status: 'Not Loggend in', message: "ログインしてください" }
        end
      end


    end
  end
end
