# rubocop:disable Lint/NumberConversion
# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def edit; end

  def new
    @product = current_user.products.build
  end

  def create
    @product = current_user.products.build(product_params)

    if @product.save
      redirect_to edit_product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params[:product].delete(:price) if params[:product][:price].to_f.zero?
    params.require(:product).permit(:name, :price)
  end
end

# rubocop:enable Lint/NumberConversion
