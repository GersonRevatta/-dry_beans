# frozen_string_literal: true

class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.text :observation
      t.integer :status, default: 0
      t.string :address
      t.references :trip, foreign_key: true
      t.datetime :delivery_time

      t.timestamps
    end
  end
end
