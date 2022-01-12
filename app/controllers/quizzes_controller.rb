class QuizzesController < ApplicationController
    before_action :authenticate_user!
    def index

    end

    def start
        random_question = Question.order("RAND()").limit(3)
        session[:total] = random_question.count
        array_question = random_question.pluck(:id)
        session[:question] = array_question
        session[:correct] = 0
        session[:current] = 0
        session[:quiz] = Quiz.create(array_questions: array_question)
        if session[:quiz].save
            redirect_to quizzes_question_path
        end
    end

    def question
        @current = session[:current]
        @total = session[:total]
        if @current > @total
            redirect_to :action => "end"
        end
        @question = Question.find(session[:question][@current])
        @answers = @question.answers.sort_by{rand}

        answerid = params[:answer]

        @answer = answerid ? Answer.find(answerid) : nil
        if @answer and @answer.correctkey
            @correct = true
            session[:correct] += 1
        else
            @correct = false
        end
        session[:current] += 1
        end

    # def answer
    #     @current = session[:current]
    #     @total   = session[:total]
    #     @question = session[:question]
    #     @answers = session[:answers]
        

    # end

    def end
        @correct = session[:correct]
        @total = session[:total]
        @score = (@correct * 100) / @total
        @time_quiz = DateTime.now.strftime('%m/%d/%Y')
        if @score >= 75
            @status = true
        else
            @status = false
        end
        @history = History.create(score: @score , test_time: @time_quiz, status: @status)
        @history.save
    end
end
