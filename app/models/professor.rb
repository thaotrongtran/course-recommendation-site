class Professor < ApplicationRecord
    has_many :reviews
    has_many :courses
    
    def self.search(search)
        
    end
end
