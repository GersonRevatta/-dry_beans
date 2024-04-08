# frozen_string_literal: true

class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :name
      t.references :driver, foreign_key: true
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
