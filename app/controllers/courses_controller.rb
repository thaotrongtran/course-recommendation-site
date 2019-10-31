class CoursesController < ApplicationController
    #To show all coures
    def index
        @courses = Course.all
    end
    
    #Create new course
    def new
        @course = Course.new
    end 
    
    #To create course and save
    def create
        @course = Course.new(course_params)
        
        #Adding validation redirection
        if @course.save
            redirect_to @course
        else
            render 'new'
        end
    end
    
    #To show in courses in a page
    def show
        @course = Course.find(params[:id])
    end
  
end


#For whitelisting
private
    def course_params
        params.require(:course).permit(:course_name)
    end