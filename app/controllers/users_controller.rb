class UsersController < ApplicationController
  before_action :check_if_logged_in, only: [:index, :show]

  def new
    @user = User.new
  end

  def create
    def create

      @user = User.create user_params     # strong params
  
 
      if @user.persisted?
        
        session[:user_id] = @user.id      # Login upon completion
        redirect_to root_path             # transfer to random Q
      
      else
       
        render :new  
      
      end
  
    end

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

  # --------------------------------------------------------------- #
  private

  def user_params
    params.require(:user).permit(:name, :email, :dob, :password, :password_confirmation)
  end


end
