# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DriverSerializer do
  let(:driver) { create(:driver) }
  let(:serializer) { described_class.new(driver) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer).to_json }

  it 'serializers expect keys' do
    expected_keys = %i[name]
    expect(JSON.parse(serialization).keys.map(&:to_sym)).to match_array(expected_keys)
  end
end
