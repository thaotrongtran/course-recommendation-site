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
  
    def search
        if params[:search].blank?  
            redirect_to(root_path, alert: "Empty field!") and return  
        else
            begin
                @parameter = params[:search]
                redirect_to course_path(Course.find_by(course_name: @parameter))
            rescue ActionController::UrlGenerationError => e
                print e
                redirect_to(root_path, alert: "Invalid field!") and return
            end
        end
    end
    
end


#For whitelisting
private
    def course_params
        params.require(:course).permit(:course_name, :search)
    end