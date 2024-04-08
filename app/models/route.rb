# frozen_string_literal: true

class Route < ApplicationRecord
  belongs_to :driver
  has_many :trips

  validates :name, presence: true
  validates :departure_time, presence: true
  validates :arrival_time, presence: true
end
