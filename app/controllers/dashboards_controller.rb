class DashboardsController < ApplicationController
  before_action :select_dashboard, only: [:show, :edit, :update, :destroy]

  def index
    # render welcome:static page
    @dashboards = Dashboard.all
    # @sort = @dashboards.sort_by { |dashboard| dashboard.date }
    # @highest = @dashboards.max_by { |dashboard| dashboard.amount }
    # @sum = @dashboards.sum do |dashboard|
    #   dashboard.amount
    # end
  end

  def show
  end

  def new
    @dashboard = Dashboard.new
  end

  def create
    @dashboard = Dashboard.new(params_dashboard)
    @dashboard.user = User.all.first
    @dashboard.save
    redirect_to dashboard_path(@dashboard)
  end

  def edit
  end

  def update
    @dashboard.update(params_dashboard)
    redirect_to dashboard_path(@dashboard)
  end

  def destroy
    @dashboard.destroy
    redirect_to dashboards_path
  end

  private

  def params_dashboard
    params.require(:dashboard).permit(:name, :description, :user_id)
  end

  def select_dashboard
    @dashboard = Dashboard.find(params[:id])
  end


end
