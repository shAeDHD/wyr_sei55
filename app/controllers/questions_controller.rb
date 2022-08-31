class QuestionsController < ApplicationController
  before_action :check_if_logged_in, only: [:create, :index, :show]
  
  def new
  
    @question = Question.new
  
  end # close NEW

  def create

    @question = Question.new question_params
    @question.opt_A = question_params[:opt_A]
    @question.opt_B = question_params[:opt_B]
    @question.user_id = @current_user.id
    @question.save
    redirect_to question_path @question.id
  
  end # close CREATE

  def index

  end # close INDEX

  def show
    
    @question = Question.find params[:id]
    
    @opt_a_total = @question.tallies.where(question_answer: true).length
    @opt_a_as_percentage = @opt_a_total.to_f / @question.tallies.length * 100

    @opt_b_total = @question.tallies.where(question_answer: false).length
    @opt_b_as_percentage = @opt_b_total.to_f / @question.tallies.length * 100

    # raise 'hell'
  end # close SHOW

  def random

    @random_question = Question.random_question
    
  end # close RANDOM

  def edit

    @question = Question.find params[:id]

    if @question.user_id != @current_user.id
    
      redirect_to login_path  # KICK unpermitted user
    
    end # close if

  end # close EDIT

  def update
  
    @question = Question.find params[:id]

    if @question.user_id != @current_user.id
      redirect_to login_path
      
      return  # KICK unpermitted user 
      
    end # close if

    if @question.update question_params
      redirect_to @question  

    else
    
      render :edit
    
    end # close if/else

  end # close UPDATE  

  def destroy
    Question.destroy params[:id]
    redirect_to root_path
  end # close DESTROY

  private

  def question_params
  
    params.require(:question).permit(:opt_A, :opt_B)
  
  end # close PRIVATE

end
