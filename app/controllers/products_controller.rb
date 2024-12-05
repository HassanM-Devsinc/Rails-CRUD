class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)

    if @product.persisted?
      redirect_to root_path  
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to root_path
    end
  end

  def destroy
    if @product.destroy
      redirect_to root_path
    end
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :stock_level)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end