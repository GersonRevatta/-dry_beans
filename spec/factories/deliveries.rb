# frozen_string_literal: true

FactoryBot.define do
  factory :delivery do
    observation { 'MyText' }
    status { 0 }
    address { 'MyString' }
    association :trip
    delivery_time { '2024-04-08 11:13:20' }
  end
end
