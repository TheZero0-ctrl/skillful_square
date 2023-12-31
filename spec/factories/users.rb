# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "tes#{n}@mail.com" }
    password { 'password' }
  end
end
