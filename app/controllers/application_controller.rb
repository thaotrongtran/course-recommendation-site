class ApplicationController < ActionController::Base
    def new
    end
    def create
        render plain: params[:review].inspect
    end
end
