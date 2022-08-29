class TalliesController < ApplicationController
  
  before_action :check_if_logged_in, only: [:create]

  # def new
  #   @random_question = Question.random_question
  # end

  def create
    choice = params[:choice] == 'A' 
    Tally.create!( 
      user_id: @current_user.id,
      question_id: params[:question_id],
      question_answer: choice
    ) 
    redirect_to question_path(params[:question_id]) 
  end

  def index
  end

  def show
 
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
