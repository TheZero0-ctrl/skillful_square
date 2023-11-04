module Products
  class ContentsController < ApplicationController
    def index
      @product = Product.friendly.find(params[:product_id])
    end
  end
end
