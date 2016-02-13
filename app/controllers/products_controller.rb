class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find( params[:id] )
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])

		if @product.update( params.require(:product).permit( :name,  :image, :amount, :price) )
			redirect_to m_products_path
		else
			render 'edit'
		end
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new( params.require(:product).permit(:name,:image,:amount,:price))
		if @product.save
			redirect_to m_products_path
		else
			render 'new'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to m_products_path
	end
end
