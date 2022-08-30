class QuestionsController < ApplicationController
  before_action :check_if_logged_in, only: [:create, :index]
  
  def new
    @question = Question.new
  end

  def create
    @question = Question.new question_params
    @question.opt_A = question_params[:opt_A]
    @question.opt_B = question_params[:opt_B]
    @question.user_id = @current_user.id
    @question.save
    redirect_to question_path @question.id
  end

  def index

  end

  def show
    
    @question = Question.find params[:id]
    
    @opt_a_total = @question.tallies.where(question_answer: true).length
    @opt_a_as_percentage = @opt_a_total.to_f / @question.tallies.length * 100

    @opt_b_total = @question.tallies.where(question_answer: false).length
    @opt_b_as_percentage = @opt_b_total.to_f / @question.tallies.length * 100

  end

  def random

    @random_question = Question.random_question
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:opt_A, :opt_B)
  end

end
