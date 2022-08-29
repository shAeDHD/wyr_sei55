class QuestionsController < ApplicationController
  before_action :check_if_logged_in, only: [:create, :index]
  
  def new
  end

  def create
  end

  def index

  end

  def show
    
    @question = Question.find params[:id]
    @opt_a_total = @question.tallies.where(question_answer: true).length
    @opt_a_as_percentage = @opt_a_total / @question.tallies.length.to_f * 100
    @opt_b_total = @question.tallies.where(question_answer: false).length
    @opt_b_as_percentage = @opt_b_total / @question.tallies.length.to_f * 100


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

end
