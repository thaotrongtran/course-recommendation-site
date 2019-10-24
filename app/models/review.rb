class Review < ApplicationRecord
    validates :course_name, presence: true, length: {minimum: 5}
    validates :professor, presence: true, length: {minimum: 5}
    validates :evaluation, presence: true, length: {minimum: 20}
    validates :professor_rating, presence: true, length: {minimum: 1}
    validates :workload_rating, presence: true, length: {minimum: 1}
    validates :support_rating, presence: true, length: {minimum: 1}
end
