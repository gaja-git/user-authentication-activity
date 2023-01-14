class ApplicationController < ActionController::Base

    def index
        render html: "application index"
    end
end
