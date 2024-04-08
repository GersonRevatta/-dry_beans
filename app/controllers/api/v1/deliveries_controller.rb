# frozen_string_literal: true

module Api
  module V1
    class DeliveriesController < ApplicationController
      before_action :set_trip, only: [:create]

      def create
        delivery = @trip&.deliveries&.new(delivery_params)
        if delivery.save
          render json: { message: 'Delivery successfully', delivery: delivery }, status: :created
        else
          unprocessable_entity delivery.errors.full_messages
        end
      rescue StandardError
        unprocessable_entity
      end

      private

      def unprocessable_entity(details = nil)
        msg = details.present? ? 'Error' : "Error: #{details}"
        render json: { error: msg }, status: :unprocessable_entity
      end

      def delivery_params
        params.require(:delivery).permit(:observation, :status, :address, :trip_id, :delivery_time)
      end

      def set_trip
        @trip = begin
          Trip.find(params[:delivery][:trip_id])
        rescue StandardError
          nil
        end
      end
    end
  end
end
