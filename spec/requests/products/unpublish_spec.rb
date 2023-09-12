# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Products::Unpublish', type: :request do
  let(:user) { create(:user) }

  before { sign_in user }

  describe 'PATCH update' do
    it 'sucessfully unpublishes product' do
      product = create(:product, published: true)
      expect do
        patch product_unpublish_path(product)
      end.to change { product.reload.published }.from(true).to(false)
      expect(response).to have_http_status(:redirect)
    end
  end
end
