class MarcasController < ApplicationController
  def index
  	@nombres = Marca.all
  end

  def new 

  end

  def edit
  	@marca = Marca.find(params[:id])
  	@nombre = @marca.nombre
  end
  def update
		@marca = Marca.find(params[:id])
 
	    if @marca.update_attribute(:nombre, params[:nombre])
	      redirect_to action: "index"
	    else
	      flash[:alert] = 'Ocurrió un error'
		
		  redirect_back fallback_location: { action: "edit" }
	    end
	end

 	def delete
		@marca = Marca.find(params[:id])
 
	    @marca.destroy
	      redirect_to action: "index"
	end


  	def save
	 @nombre = params[:nombre]
	 @marca = Marca.new({nombre: @nombre})
 
	  if @marca.save
	    redirect_to action: "index"
	    
	  else
	    /render 'new', alert: "Oops! There was a problem, please try again"
	    render :js => "alert('hello')"/
	    flash[:alert] = 'Nombre obligtorio'
		
		redirect_back fallback_location: { action: "new" }
	  end
	end

	

end
