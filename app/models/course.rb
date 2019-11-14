class Course < ApplicationRecord
    has_many :reviews
    has_many :professors
    has_one :calculation
end
