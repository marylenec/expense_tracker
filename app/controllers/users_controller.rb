class UsersController < ApplicationController
  before_action :select_user, only: [:show, :edit, :update, :destroy]

  def index
    # render welcome:static page
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      flash[:error_message] = user.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(params_user)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def params_user
    params.require(:user).permit(:name, :email, :password)
  end

  def select_user
    @user = User.find(params[:id])
  end

end
