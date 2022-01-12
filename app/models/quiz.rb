class Quiz < ApplicationRecord
    serialize :array_questions,Array
    serialize :array_user_choices,Array

end
