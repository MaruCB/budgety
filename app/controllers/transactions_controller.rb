class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transaction.category = Category.find(transaction_params[:category_id])
    @transaction.save

    # redirect_to transaction_path(@transaction)
  end

  # def edit
  #   @Transaction = Transaction.find(params[:id])
  # end
end

private

def transaction_params
  params.require(:transaction).permit(:amount, :category_id, :notes, :date)
end
