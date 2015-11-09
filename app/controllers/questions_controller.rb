class QuestionsController < ApplicationController

  def new
  end

  def create
    @question = Question.new(params[:question])
    @question.save
    redirect_to @question
  end

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  private
    def question_params
      params.require(:question).permit(:answer_a, :answer_b, :answer_c, :answer_d, :question_text)
    end

end
