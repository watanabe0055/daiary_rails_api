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

      def show
        #存在しないレコードの時に、nilを返したい為「find_by」を使ってる
        emotion = Emotion.find_by(id: params[:id])
        if current_api_v1_user
          if emotion == nil
            render status: 400, json: { status: 'not_exist_emotion_data', message: '存在しないレコードです' }
          #emotionとuserでidの型が違うから、to_sで合わせてます
          elsif emotion.is_deleted == false
            render status: 200, json: { emotion: emotion}
          elsif emotion.is_deleted == true
            render status: 400, json: { status: 'deleted_emotion_data', message: '削除済みのデータです' }
          else
            render status: 400, json: { status: 'Erroy', message: '例外処理' }
          end
        else
          render json: { status: 'Not Loggend in', message: "ログインしてください" }
        end
      end

    end
  end
end
