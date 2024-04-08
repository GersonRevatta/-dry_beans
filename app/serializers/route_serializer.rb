# frozen_string_literal: true

class RouteSerializer < ActiveModel::Serializer
  attributes :id, :name, :driver, :departure_time, :arrival_time, :trips

  def driver
    return '' unless object.driver.present?

    ActiveModelSerializers::SerializableResource.new(object.driver, serializer: DriverSerializer)
  end

  def trips
    return [] unless object.trips.present?

    ActiveModelSerializers::SerializableResource.new(object.trips, each_serializer: TripSerializer)
  end
end
