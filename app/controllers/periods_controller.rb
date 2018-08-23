class PeriodsController < ApplicationController
  before_action :select_period, only: [:show, :edit, :update, :destroy]

  def index
    # render welcome:static page
    @periods = Period.all
    # @sort = @periods.sort_by { |period| period.date }
    # @highest = @periods.max_by { |period| period.amount }
    # @sum = @periods.sum do |period|
    #   period.amount
    # end
  end

  def show
  end

  def new
    @period = Period.new
  end

  def create
    @period = Period.new(params_period)
    @period.user = User.all.first
    @period.save
    redirect_to period_path(@period)
  end

  def edit
  end

  def update
    @period.update(params_period)
    redirect_to period_path(@period)
  end

  def destroy
    @period.destroy
    redirect_to periods_path
  end

  private

  def params_period
    params.require(:period).permit(:month, :year, :dashboard_id)
  end

  def select_period
    @period = Period.find(params[:id])
  end

end
