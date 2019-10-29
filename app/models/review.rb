class Review < ApplicationRecord
<<<<<<< HEAD
    has_one :professor
    has_one :course
    #validates :course_name, presence: true, length: {minimum: 5}
    #validates :professor, presence: true, length: {minimum: 5}
    #validates :evaluation, presence: true, length: {minimum: 10}
    #validates :prof_rating, presence: true, length: {minimum: 1}
    #validates :workload_rating, presence: true, length: {minimum: 1}
    #validates :support_rating, presence: true, length: {minimum: 1}
=======
    has_one :course
    has_one :professor
    validates :course_id, presence: true, length: {minimum: 1}
    validates :prof_id, presence: true, length: {minimum: 1}
    validates :evaluation, presence: true, length: {minimum: 10}
    validates :prof_rating, presence: true, length: {minimum: 1}
    validates :workload_rating, presence: true, length: {minimum: 1}
    validates :support_rating, presence: true, length: {minimum: 1}
>>>>>>> 2c17a0b
end
