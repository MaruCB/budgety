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
    if @transaction.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Transaction was successfully created." }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @Transaction = Transaction.find(params[:id])
  # end
end

private

def transaction_params
  params.require(:transaction).permit(:amount, :category_id, :notes, :date)
end
