# frozen_string_literal: true

class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :observation, :status, :address, :delivery_time
end
