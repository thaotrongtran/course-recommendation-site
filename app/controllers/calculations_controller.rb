class CalculationsController < ApplicationController
    def show
        @calculation = Calculation.find(params[:id])
    end
    
    def new
        @calculation = Calculation.new
    end 
    
    #To show articles at index page
    def index
        @calculations = Calculation.all
    end
end

private
    def calculation_params
        params.require(:calculation).permit(:course_id)
    end
