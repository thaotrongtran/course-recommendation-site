class CoursesController < ApplicationController
    #To show all coures
    def index
        @courses = Course.all
    end
end
