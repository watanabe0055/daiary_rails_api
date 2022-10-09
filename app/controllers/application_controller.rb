class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        #ActionDispatch::Request::Session::DisabledSessionError対策
        include DeviseHackFakeSession # この部分を追加します
        
        before_action do
                I18n.locale = :ja
        end
end
