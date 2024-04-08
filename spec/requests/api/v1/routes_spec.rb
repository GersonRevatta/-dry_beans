# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::RoutesController, type: :controller do
  describe 'GET #show' do
    let(:route) { create(:route) }

    before do
      create_list(:trip, 2, route: route)
      create_list(:delivery, 3, trip: route.trips.first)
      get :show, params: { id: route.id }
    end

    it 'returns is success' do
      expect(response).to have_http_status(:success)
    end

    it 'return data' do
      data = JSON.parse(response.body)

      expect(data['id']).to eq(route.id)
      expect(data['name']).to eq(route.name)
      expect(data['driver']['name']).to eq(route.driver.name)
      expect(data['trips'].count).to eq(2)
      expect(data['trips'][0]['deliveries'].count).to eq(3)
    end
  end
end
