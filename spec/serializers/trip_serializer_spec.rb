# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TripSerializer do
  let(:trip) { create(:trip) }
  let(:serializer) { described_class.new(trip) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer).to_json }

  it 'serializers expect keys' do
    expected_keys = %i[id origin destination departure_time arrival_time deliveries]
    expect(JSON.parse(serialization).keys.map(&:to_sym)).to match_array(expected_keys)
  end
end
