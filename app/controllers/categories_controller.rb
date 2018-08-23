class CategoriesController < ApplicationController
  before_action :select_category, only: [:show]

  def index
  end

  def show
  end

  private

  def params_categories
    params.require(:category).permit(:name, :description)
  end

  def select_category
    @category = Category.find(params[:id])
  end
end
