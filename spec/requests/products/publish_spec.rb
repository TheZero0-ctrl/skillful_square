# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Products::Publish', type: :request do
  let(:user) { create(:user) }

  before { sign_in user }

  describe 'PATCH update' do
    it 'sucessfully publishes product' do
      product = create(:product, published: false)
      expect do
        patch product_publish_path(product, format: :turbo_stream)
      end.to change { product.reload.published }.from(false).to(true)
    end
  end
end
