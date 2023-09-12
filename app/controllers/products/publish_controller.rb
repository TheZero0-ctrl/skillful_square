# frozen_string_literal: true

module Products
  class PublishController < ApplicationController
    before_action :authenticate_user!

    def update
      @product = Product.friendly.find(params[:id])
      @product.update!(published: true)
      flash.now[:success] = 'Product successfully published'
    end
  end
end
