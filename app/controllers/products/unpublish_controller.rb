# frozen_string_literal: true

module Products
  class UnpublishController < ApplicationController
    before_action :authenticate_user!

    def update
      @product = Product.friendly.find(params[:id])
      @product.update!(published: false)
      flash.now[:success] = 'Product successfully unpublished'
    end
  end
end
