class Api::ProductsController < ApplicationController
  before_action :set_model, only: [:update, :destroy, :show]

  def index
    @products = Product.all

    respond_with @products
  end

  def show
    respond_with @product
  end

  def create
    @product = Product.create(permitted_params)

    respond_with @product
  end

  def update
    @product.update(permitted_params)

    respond_with @product
  end

  def destroy
    @product.destroy

    head :no_content
  end

  private

  def set_model
    @product = Product.find(params[:id])
  end

  def permitted_params
    params.require(:product).permit(:name, :category_id, :code, :price)
  end
end

