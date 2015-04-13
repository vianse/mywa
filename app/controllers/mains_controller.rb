class MainsController < ApplicationController
  before_action :set_main, only: [:show, :edit, :update, :destroy]

  # GET /mains
  # GET /mains.json
  def error
  end
   def codigo_usado
  end

 def codigos
    @mains = Main.all
  end

  def index
    @mains = Main.all
  end

  # GET /mains/1
  # GET /mains/1.json
  def show

  end

  # GET /mains/new
  def new
    @codigoValido = Code.where(:code => params[:code]).count
    if @codigoValido != 0 
       @codigoRegistrado = Main.where(:code => params[:code]).count
        if @codigoRegistrado != 0
           redirect_to :controller => 'mains', :action => 'codigo_usado'
        else
           @resultado = Code.where(:code => params[:code]).pluck(:code).first
        end
    else
     @mensaje = "Lo sentimos, el código ingresado no es valido, favor de ingresar un código valido."
     redirect_to :controller => 'mains', :action => 'error'
     logger.debug "codigo #{@codigoValido}"
    end
    @main = Main.new
  end

  # GET /mains/1/edit
  def edit
  end

  # POST /mains
  # POST /mains.json
  def create
    @main = Main.new(main_params)

    respond_to do |format|
      if @main.save
        format.html { redirect_to @main, notice: 'Main was successfully created.' }
        format.json { render action: 'show', status: :created, location: @main }
      else
        format.html { render action: 'new' }
        format.json { render json: @main.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mains/1
  # PATCH/PUT /mains/1.json
  def update
    respond_to do |format|
      if @main.update(main_params)
        format.html { redirect_to @main, notice: 'Main was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @main.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mains/1
  # DELETE /mains/1.json
  def destroy
    @main.destroy
    respond_to do |format|
      format.html { redirect_to mains_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main
      @main = Main.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_params
      params.require(:main).permit(:code, :name, :age, :sex, :blood_type, :allergic_food, :allergic_drug, :diseases, :emergency_name, :emergency_phone, :life_insurance, :car_insurance, :user_id)
    end
end
