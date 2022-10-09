module Api
  module V1
    class DiaryController < ApplicationController

      def index
          #allDairy = Diary.joins(:user).where(is_deleted: false).order(created_at: "desc")
          #render status: 200, json: { diary: allDairy}
          
        
        
      end
      
    end
  end
end
