# frozen_string_literal: true

class Driver < ApplicationRecord
  validates :name, presence: true
end
