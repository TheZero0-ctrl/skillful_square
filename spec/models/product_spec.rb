# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
  describe 'attributes' do
    it { is_expected.to monetize(:price) }
  end
end
