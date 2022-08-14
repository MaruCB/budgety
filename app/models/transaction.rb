# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :user

  scope :ordered, -> { order(date: :desc) }
end
