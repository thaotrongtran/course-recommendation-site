class Professor < ApplicationRecord
    has_many :reviews
    has_many :courses
    
end
