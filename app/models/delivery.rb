# frozen_string_literal: true

class Delivery < ApplicationRecord
  belongs_to :trip

  enum status: { pending: 0, in_progress: 1, completed: 2, canceled: 3 }
end
