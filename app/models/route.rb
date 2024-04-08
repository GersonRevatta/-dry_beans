# frozen_string_literal: true

class Route < ApplicationRecord
  belongs_to :driver

  validates :name, presence: true
  validates :departure_time, presence: true
  validates :arrival_time, presence: true
end
