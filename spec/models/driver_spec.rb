# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Driver do
  it { is_expected.to validate_presence_of(:name) }
end
