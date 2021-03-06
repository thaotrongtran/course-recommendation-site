class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end 
    
    #To show articles at index page
    def index
        @reviews = Review.all
    end
    
    #To show review
    def show
        @review = Review.find(params[:id])
    end
    
    #To create review and save
    def create
        @review = Review.new(review_params)
        
        #Adding validation redirection
        if @review.save
            redirect_to @review
        else
            render 'new'
        end
        
    end
    
    #To edit articles
    def edit
        @review = Review.find(params[:id])
    end
    
    #For the update button in the edit page
    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            redirect_to @review
        else
            render 'edit'
        end
    end
    
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_path
    end
    
end

#For whitelisting
private
    def review_params
        params.require(:review).permit(:evaluation,:prof_rating,:workload_rating,:support_rating,:professor_id,:course_id)
    end