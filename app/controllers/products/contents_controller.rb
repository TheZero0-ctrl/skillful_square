# frozen_string_literal: true

module Products
  class ContentsController < ApplicationController
    def index
      @product = Product.friendly.find(params[:product_id])
      @contents = @product.contents
    end
  end
end
