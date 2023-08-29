# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Product', type: :request do
  let(:user) { create(:user) }

  before { sign_in user }

  describe 'GET index' do
    it 'returns http success' do
      get products_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET new' do
    it 'returns http success' do
      get new_product_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST create' do
    context 'with valid params with price as string' do
      it 'creates a new product' do
        expect do
          post products_path, params: {
            product: {
              name: 'Test Product',
              price: 'hello'
            }
          }
        end.to change(Product, :count).by(1)
        expect(response).to have_http_status(:redirect)
        expect(Product.last.price.to_s).to eq('0.00')
      end
    end

    context 'with valid params with price as number' do
      it 'creates a new product' do
        expect do
          post products_path, params: {
            product: {
              name: 'Test Product',
              price: '100'
            }
          }
        end.to change(Product, :count).by(1)
        expect(response).to have_http_status(:redirect)
        expect(Product.last.price.to_s).to eq('100.00')
      end
    end
  end
end
