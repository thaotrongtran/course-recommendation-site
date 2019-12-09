class ProfessorsController < ApplicationController
      #To show all coures
    def index
        @professors = Professor.all
    end
    
    #Create new professor
    def new
        @professor = Professor.new
    end 
    
    #To create professor and save
    def create
        @professor = Professor.new(professor_params)
        
        #Adding validation redirection
        if @professor.save
            redirect_to @professor
        else
            render 'new'
        end
    end
    
    #To show in professors in a page
    def show
        @professor = Professor.find(params[:id])
    end
    
    def destroy
        @professor = Professor.find(params[:id])
        @professor.destroy
        redirect_to professors_path
    end
  
end


#For whitelisting
private
    def professor_params
        params.require(:professor).permit(:prof_name, :search)
    end
