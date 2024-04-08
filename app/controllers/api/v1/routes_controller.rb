# frozen_string_literal: true

module Api
  module V1
    class RoutesController < ApplicationController
      before_action :set_route, only: [:show]

      def show
        render json: @route, serializer: RouteSerializer
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Error not found' }, status: :not_found
      end

      private

      def set_route
        @route = Route.includes(:trips).find(params[:id])
      end
    end
  end
end
