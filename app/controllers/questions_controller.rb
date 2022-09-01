class QuestionsController < ApplicationController
  before_action :check_if_logged_in, only: [:create, :index, :show]
  # before_action :question_selection, only: [:random]


  def new
    @question = Question.new
  
  end # close NEW

  def create
    # raise 'hell'
    @question = Question.new question_params
    @question.user_id = @current_user.id
    if params[:question][:thumbnail_image].present?

      response = Cloudinary::Uploader.upload params[:question][:thumbnail_image]
      @question.thumbnail_image = response['public_id']

    end

    # TO DO - VALIDATION CHECKING 
    if params[:hashtag_ids].present? && params[:hashtag_ids].length > 1
      
      @question.save
      @question.hashtags << Hashtag.find(params[:hashtag_ids])
      redirect_to question_path @question.id
        
    else 

      # not enough hashtags supplied 
      flash[:error]= 'Select at least 2 hashtags'
      render :new 

    end

  
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

    @random_question = question_selection
    
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
  
    params.require(:question).permit(:opt_A, :opt_B, :thumbnail_image)
  
  end # close PRIVATE

end
