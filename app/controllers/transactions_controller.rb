class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to '/transactions'
    else
      render 'new'
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update_attributes(transaction_params)
      redirect_to @transaction
    else
      render 'edit'
    end
  end

  def destroy
    Transaction.find(params[:id]).destroy
    redirect_to '/transactions'
  end

  private
    def transaction_params
      params.require(:transaction).permit(:type, :value)
    end
end
