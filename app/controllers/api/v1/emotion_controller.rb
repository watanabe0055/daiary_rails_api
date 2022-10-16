module Api
  module V1
    class EmotionController < ApplicationController
      def index
        emotionAll = Emotion.all.where(is_deleted: false).select(:id,:emotion)
        render json: { status: 'SUCCESS', emotionAll: emotionAll }
      end
    end
  end
end
