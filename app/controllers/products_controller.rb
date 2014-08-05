class ProductsController <ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])	
	end

	def new
		@product = Product.new	
	end

	def create
		@product = Product.new(product_params)
			if @product.save
				flash.notice = "Horray your product is been created"
				redirect_to products_path
		else
			flash.alert = "You can not create a product"
			redirect_to :new
		end		
	end

	# def edit
		
	# end

	# def update
	# 	if @product.update(product_params)
 #  			redirect_to @product, notice: 'product was successfully uopdated.'
 #  		else
 #  			render :edit
 #  		end
	# end

	# def destroy
		
	# end

	private
	def product_params
		params.require(:product).permit(:title, :description, :price, :image_url )
	end
	
end