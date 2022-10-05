module Api
  module V1
    class DiaryController < ApplicationController

      def index
        allDairy = Diary.all
        render status: 200, json: { diary: allDairy }
      end
      
    end
  end
end
