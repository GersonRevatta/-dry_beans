# frozen_string_literal: true

FactoryBot.define do
  factory :trip do
    origin { 'MyString' }
    destination { 'MyString' }
    association :route
    departure_time { '2024-04-08 10:48:40' }
    arrival_time { '2024-04-08 10:48:40' }
  end
end
