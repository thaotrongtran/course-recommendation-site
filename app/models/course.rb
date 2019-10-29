class Course < ApplicationRecord
  belongs_to :review
  belongs_to :professor
end
