# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RouteSerializer do
  let(:route) { create(:route) }
  let(:serializer) { described_class.new(route) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer).to_json }

  it 'serializers expect keys' do
    expected_keys = %i[id name driver departure_time arrival_time trips]
    expect(JSON.parse(serialization).keys.map(&:to_sym)).to match_array(expected_keys)
  end
end
