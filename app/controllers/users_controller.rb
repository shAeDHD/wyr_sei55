class UsersController < ApplicationController
  before_action :check_if_logged_in, only: [:create, :index]

  def new
  end

  def create
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
