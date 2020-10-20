class Admins::QuestionsController < ApplicationController
    def show
        @question = Question.find(params[:id])
    end
    def new
        @question = Question.new
        @question.answers.build
        @question.answers.build
        @question.answers.build
        @question.answers.build
    end
    def create
        @question = Question.create!(question_params)

        redirect_to admins_question_path(@question)
    end
    private
    def question_params
        params.require(:question).permit(:content,:isparamly, answers_attributes: [:id,:content,:correctkey,:_destroy])
    end
end
