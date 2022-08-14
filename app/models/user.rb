# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :transactions
  
  def expenses
    # self.transactions.where(:categories => { :category_type => "expense" })
    self.transactions.where(category: Category.where(category_type: "expense")).sum(:amount)
  end

  def income
    self.transactions.where(category: Category.where(category_type: "income")).sum(:amount)
  end
end
