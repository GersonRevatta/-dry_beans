# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:origin) }
    it { is_expected.to validate_presence_of(:destination) }
    it { is_expected.to validate_presence_of(:departure_time) }
    it { is_expected.to validate_presence_of(:arrival_time) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:route) }
  end
end
