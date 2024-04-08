# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::DeliveriesController, type: :controller do
  describe 'POST #create' do
    let(:route) { create(:route) }

    context 'with valid params' do
      let(:trip) { create(:trip, route: route) }
      let(:params) do
        { delivery: { observation: 'ok', status: 'pending', address: '216 Newbury Street', trip_id: trip.id,
                      delivery_time: DateTime.now } }
      end

      before do
        post :create, params: params
      end

      it 'returns status 201 Created' do
        expect(response).to have_http_status(:created)
      end

      it 'returns the created delivery in JSON format' do
        expect(response.content_type).to eq('application/json')
      end
    end

    context 'with invalid params' do
      let(:params) do
        { delivery: { trip_id: 4 } }
      end

      before do
        post :create, params: params
      end

      it 'returns status 422 Unprocessable Entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
