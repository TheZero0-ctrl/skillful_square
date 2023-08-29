# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'attributes' do
    it { is_expected.to monetize(:price) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }

    it 'product name should be unique' do
      create(:product)
      expect(subject).to validate_uniqueness_of(:name).scoped_to(:user_id).case_insensitive
    end
  end
end
