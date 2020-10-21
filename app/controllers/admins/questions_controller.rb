class Admins::QuestionsController < ApplicationController
    before_action :admin_signed_in

    def index
        @questions = Question.all
    end
    def show
        @question = Question.find(params[:id])
        @question_images = @question.question_images
        answers = @question.answers
    end
    def new
        @question = Question.new
        @question_image = @question.question_images.build
        4.times do
          @question.answers.build
        end
    end
    def create
        @question = Question.create!(question_params)

        #   if params[:question_images] && params[:question_images][:image]
          if !params[:question_images].nil?

              params[:question_images][:image].each do |a|
              @question_image = @question.question_images.create!(:image => a) 
            end
          end

        redirect_to admins_question_path(@question)
    end
    private
    def question_params
        params.require(:question).permit(:content,:isparamly, question_images_attributes: [:id,:question_id,:image], answers_attributes: [:id,:content,:correctkey])
    end
end
