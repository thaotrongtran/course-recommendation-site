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
    
    def search  
      if params[:search].blank?  
        redirect_to(root_path, alert: "Empty field!") and return  
      else  
        @professor = params[:search].downcase 
        @results = Professor.all.where("lower(prof_name) LIKE :search", search: "%#{@professor}%")
        render :json => @results
      end  
    end
  
end


#For whitelisting
private
    def professor_params
        params.require(:professor).permit(:prof_name, :search)
    end
