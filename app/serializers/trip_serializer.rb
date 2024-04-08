# frozen_string_literal: true

class TripSerializer < ActiveModel::Serializer
  attributes :id, :origin, :destination, :departure_time, :arrival_time, :arrival_time, :deliveries

  def deliveries
    return [] unless object&.deliveries.present?

    ActiveModelSerializers::SerializableResource.new(object.deliveries, each_serializer: DeliverySerializer)
  end
end
