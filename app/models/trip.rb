# frozen_string_literal: true

class Trip < ApplicationRecord
  belongs_to :route
  has_many :deliveries

  validates :origin, presence: true
  validates :destination, presence: true
  validates :departure_time, presence: true
  validates :arrival_time, presence: true
end
