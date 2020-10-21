class QuestionImage < ApplicationRecord
    belongs_to :question
    mount_uploader :image , PictureUploader
end
