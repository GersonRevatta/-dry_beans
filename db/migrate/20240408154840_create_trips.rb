# frozen_string_literal: true

class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :origin
      t.string :destination
      t.references :route, foreign_key: true
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
