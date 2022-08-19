class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all.where(user: current_user)
    if params.present?
      case params[:filter]
        when "Today" then @transactions = Transaction.date_between(Date.today, Date.today)
        when "3 days" then @transactions = Transaction.date_between(Date.today, Date.today - 3.days)
        when "30 days" then @transactions = Transaction.date_between(Date.today, Date.today - 30.days)
      end
    else
      @transactions = Transaction.all.where(user: current_user)
    end
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

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to root_path, status: :see_other
  end
end

private

def transaction_params
  params.require(:transaction).permit(:amount, :category_id, :notes, :date)
end
