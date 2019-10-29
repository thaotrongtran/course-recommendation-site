class Professor < ApplicationRecord
  belongs_to :review
  belongs_to :course
end
