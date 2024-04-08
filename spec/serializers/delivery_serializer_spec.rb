# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DeliverySerializer do
  let(:delivery) { create(:delivery) }
  let(:serializer) { described_class.new(delivery) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer).to_json }

  it 'serializers expect keys' do
    expected_keys = %i[id observation status address delivery_time]
    expect(JSON.parse(serialization).keys.map(&:to_sym)).to match_array(expected_keys)
  end
end
