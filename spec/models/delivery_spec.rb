# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Delivery, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:trip) }
  end

  describe 'default status' do
    let(:delivery) { create(:delivery) }

    it 'sets the default status to "pending"' do
      expect(delivery.status).to eq('pending')
    end
  end
end
