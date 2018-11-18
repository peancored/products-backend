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
    @category = Category.find_or_create_by(name: category_params[:category])
    @product = Product.create(permitted_params.merge(category: @category))

    @product.details << Detail.create(details_params[:details])

    respond_with @product
  end

  def update
    @category = Category.find_or_create_by(name: category_params[:category])
    @product.update(permitted_params.merge(category: @category))

    details_params[:details].each do |detail|
      id = detail.delete(:id)

      if id
        Detail.find(id).update(detail)
      else
        @product.details.create(detail)
      end
    end

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

  def category_params
    params.require(:product).permit(:category)
  end

  def details_params
    params.require(:product).permit(details: [:id, :key, :value])
  end
end

