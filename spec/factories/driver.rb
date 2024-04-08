# typed: false
# frozen_string_literal: true

FactoryBot.define do
  factory :driver do
    sequence(:name) { |n| "driver #{n}" }
  end
end
