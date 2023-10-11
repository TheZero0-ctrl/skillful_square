# rubocop:disable Lint/NumberConversion
# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: %i[edit update]

  def index; end

  def edit; end

  def new
    @product = current_user.products.build
  end

  def create
    @product = current_user.products.build(product_params)

    if @product.save
      flash[:success] = true
      flash[:data] = 'Product created successfully'
      redirect_to edit_product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      flash[:sucess] = 'Product updated successfully'
      redirect_to edit_product_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params[:product].delete(:price) if params[:product][:price].to_f.zero?
    params.require(:product).permit(:name, :description, :price, :slug)
  end

  def set_product
    @product = Product.friendly.find(params[:id])
  end
end

# rubocop:enable Lint/NumberConversion
