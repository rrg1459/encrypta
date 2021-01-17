class OpcionesController < ApplicationController
  before_action :set_option, only: [:show, :edit, :update, :destroy]

  # GET /opciones
  # GET /opciones.json
  def index
    @opciones = Opcion.all
  end

  # GET /opciones/1
  # GET /opciones/1.json
  def show
  end

  # GET /opciones/new
  def new
    numero = Numero.first
    @opcion = Opcion.new
    @opcion.juliano = Opcion.all.size + 1
    @opcion.porcentaje = numero.porcentaje
    @opcion.inversion = numero.inversion
    @opcion.par_id = Opcion.last.par_id if Opcion.all.size > 0
  end

  # GET /opciones/1/edit
  def edit
  end

  # POST /opciones
  # POST /opciones.json
  def create
    numero             = Numero.first
    @opcion            = Opcion.new(option_params)
    @opcion.juliano    = Opcion.all.size + 1
    # @opcion.porcentaje = numero.porcentaje
    @opcion.inversion  = numero.inversion
    @opcion.tipo.downcase!
    respond_to do |format|
      if @opcion.save
        format.html { redirect_to opciones_url, notice: 'IQ Opción CREADA correctamente' }
        format.json { render :show, status: :created, location: @opcion }
      else
        format.html { render :new }
        format.json { render json: @opcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opciones/1
  # PATCH/PUT /opciones/1.json
  def update
    respond_to do |format|
      if @opcion.update(option_params)
        format.html { redirect_to @opcion, notice: 'IQ Opción ACTUALIZADA correctamente' }
        format.json { render :show, status: :ok, location: @opcion }
      else
        format.html { render :edit }
        format.json { render json: @opcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opciones/1
  # DELETE /opciones/1.json
  def destroy
    @opcion.destroy
    respond_to do |format|
      format.html { redirect_to opciones_url, notice: 'IQ Opción BORRADA correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option
      @opcion = Opcion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_params
      params.require(:opcion).permit(:juliano, :resultado, :porcentaje, :canal_id, :par_id, :reloj_id, :tipo)
    end
end
