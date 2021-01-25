class OpcionesController < ApplicationController
  before_action :set_option, only: [:show, :edit, :update, :destroy]

  # GET /opciones
  # GET /opciones.json
  def index
    @opciones = Opcion.all.order(traded_at: :desc)
    @opcion            = Opcion.new
    @opcion.juliano    = Opcion.all.size + 1
    @opcion.inversion  = 1
    @opcion.porcentaje = 0
    if Opcion.all.size > 0
      @opcion.par_id     = Opcion.last.par_id
      @opcion.reloj_id   = Opcion.last.reloj_id
      @opcion.canal_id   = Opcion.last.canal_id
      @opcion.porcentaje = Opcion.last.porcentaje
      @opcion.inversion  = Opcion.last.inversion
    end
  end

  # GET /opciones/1
  # GET /opciones/1.json
  def show
  end

  # GET /opciones/new
  def new
    numero             = Numero.first
    @opcion            = Opcion.new
    @opcion.juliano    = Opcion.all.size + 1
    @opcion.porcentaje = numero.porcentaje
    @opcion.inversion  = numero.inversion
    if Opcion.all.size > 0
      @opcion.par_id     = Opcion.last.par_id
      @opcion.reloj_id   = Opcion.last.reloj_id
      @opcion.canal_id   = Opcion.last.canal_id
    end
  end

  # GET /opciones/1/edit
  def edit
  end

  # POST /opciones
  # POST /opciones.json
  def create
    @opcion            = Opcion.new(option_params)
    @opcion.juliano    = Opcion.all.size + 1
    @opcion.tipo.downcase!
    @opcion.traded_at  = Time.now
    respond_to do |format|
      if @opcion.save
        flash[:success] = 'IQ Opción CREADA correctamente'
        format.html { redirect_to opciones_url }
        format.json { render :show, status: :created, location: @opcion }
      else
        flash[:error] = 'No se pudo crear la IQ Opción'
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
        flash[:success] = 'IQ Opción ACTUALIZADA correctamente'
        format.html { redirect_to @opcion }
        format.json { render :show, status: :ok, location: @opcion }
      else
        flash[:error] = 'No se pudo actualizar la IQ Opción'
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
      flash[:success] = 'IQ Opción BORRADA correctamente'
      format.html { redirect_to opciones_url }
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
      params.require(:opcion).permit(:juliano, :inversion, :resultado, :porcentaje, :canal_id, :par_id, :reloj_id, :tipo)
    end
end
