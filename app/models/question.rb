class Question < ApplicationRecord
    has_many :answers
    has_many :question_images
    accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
    #accepts_nested_attributes_for :question_images, allow_destroy: true
    accepts_nested_attributes_for :question_images, allow_destroy: true, reject_if: proc { |attributes| attributes['image'].blank? }
end
