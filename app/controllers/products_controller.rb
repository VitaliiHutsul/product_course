class ProductsController < ApplicationController
  def index
    @products = Product.all
  end 

  def new
    @product = Product.new
  end 

  def create
    @product = Product.new(product_params)

    if @product.valid?
      @product.save

      redirect_to products_path
    else
      render :new
    end  
  end  

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)

      redirect_to products_path
    else
      render :edit  
  end  
 end 

  def edit
    @product = Product.find(params[:id])
  end  

  def product_params
    params.require(:product).permit(:title, :price)
  end  
end  