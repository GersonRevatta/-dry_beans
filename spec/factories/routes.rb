# frozen_string_literal: true

FactoryBot.define do
  factory :route do
    name { 'MyString' }
    association :driver
    departure_time { '2024-04-08 09:10:20' }
    arrival_time { '2024-04-08 19:10:20' }
  end
end
