

class LogoutController < ApplicationController
    #skip_before_action :verify_authenticity_token

    def index
        session.delete(:current_user_id)
        render json: "Logged out "
    end   
    

end
