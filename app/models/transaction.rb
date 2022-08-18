# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates :amount, :date, presence: true


  scope :ordered, -> { order(date: :desc) }
  scope :date_between, lambda { |start_date, end_date|
    where('date <= ? AND date >= ?', start_date, end_date)
  }
end
