class TransactionsController < ApplicationController
  before_action :select_transaction, only: [:show, :edit, :update, :destroy]

  def index
    # render welcome:static page

    if params[:search]
     @transactions = Transaction.all.select { |transaction| transaction.subcategory.name.include?(params[:search].downcase)}
     else
     @transactions = Transaction.all
     end

    @sort = @transactions.sort_by { |transaction| transaction.date }
    @highest = @transactions.max_by { |transaction| transaction.amount }
    @sum = @transactions.sum do |transaction|
      transaction.amount
    end
  end

  def show
  end

  def new
    @transaction = Transaction.new
  end


  # {"utf8"=>"✓", "authenticity_token"=>"DATkjLoJwVgW6msnVKdtKUjEExfCIGiqfHRXOFo184tYqL7EgayE69WQSpa18oVtVlIkzAkRCscQuCkkj3Vs9A==",
  #
  #   "transaction"=>{"period_id"=>"1",
  #     "subcategory_name"=>"vacation",
  #     "date"=>"15",
  #     "vendor"=>"Vacations togo",
  #     "amount"=>"1200"},
  #     "commit"=>"Create Transaction",
  #     "controller"=>"transactions",
  #     "action"=>"create"}


  def create
    @transaction = Transaction.new(params_transaction)
    # set the subcategory with the cateogory

    @transaction.subcategory.category_id = params[:transaction][:category_id]

    @transaction.subcategory.save

    @transaction.user = User.all.first
    @transaction.save
    redirect_to transaction_path(@transaction)
  end

  def edit
  end

  def update
    @transaction.update(params_transaction)
    redirect_to transaction_path(@transaction)
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_path
  end

  private

  def params_transaction
    params.require(:transaction).permit(:vendor, :amount, :date, :description, :user_id, :subcategory_name, :period_id)
  end

  def select_transaction
    @transaction = Transaction.find(params[:id])
  end

end
