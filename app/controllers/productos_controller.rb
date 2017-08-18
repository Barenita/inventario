class ProductosController < ApplicationController
  def index
  	@nombres = Producto.all
  	@total = Producto.sum(:precio)
  end

  def new 
  	@marcas = Marca.all
    @marcas_options = @marcas.map{|v| [v.nombre, v.id] }
  end

  def edit
  	@producto = Producto.find(params[:id])
  	@nombre = @producto.nombre
  	@marcas = Marca.all
    @marcas_options = @marcas.map{|v| [v.nombre, v.id] }

  end

  def update
		@producto = Producto.find(params[:id])
 
	    if @producto.update(deal_params)
	      redirect_to action: "index"
	    else
	      flash[:alert] = 'Ocurrió un error'
		
		  redirect_back fallback_location: { action: "edit" }
	    end
	end

 	def delete
		@producto = Producto.find(params[:id])
 
	    @producto.destroy
	      redirect_to action: "index"
	end


  	def save
	 @nombre = params[:nombre]
	 @producto = Producto.new(deal_params)
 
	  if @producto.save
	    redirect_to action: "index"
	    
	  else
	    /render 'new', alert: "Oops! There was a problem, please try again"
	    render :js => "alert('hello')"/
	    flash[:alert] = 'Datos incorrectos'

		redirect_back fallback_location: { action: "new" }
	  end
	end
	private
    def deal_params
        params.permit(:nombre, :marca_id, :descripcion, :precio)
    end
end
