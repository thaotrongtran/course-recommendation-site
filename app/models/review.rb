class Review < ApplicationRecord
    belongs_to :course
    belongs_to :professor
    validates :course_id, presence: true, length: {minimum: 1}
    validates :prof_id, presence: true, length: {minimum: 1}
    validates :evaluation, presence: true, length: {minimum: 10}
    validates :prof_rating, presence: true, length: {minimum: 1}
    validates :workload_rating, presence: true, length: {minimum: 1}
    validates :support_rating, presence: true, length: {minimum: 1}
end
