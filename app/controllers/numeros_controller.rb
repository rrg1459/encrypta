class NumerosController < ApplicationController
  before_action :set_numero, only: [:show, :edit, :update, :destroy]

  # GET /numeros
  # GET /numeros.json
  def index
    @numeros = Numero.all
  end

  # GET /numeros/1
  # GET /numeros/1.json
  def show
  end

  # GET /numeros/new
  def new
    @numero = Numero.new
  end

  # GET /numeros/1/edit
  def edit
  end

  # POST /numeros
  # POST /numeros.json
  def create
    @numero = Numero.new(numero_params)
    respond_to do |format|
      if @numero.save
        format.html { redirect_to @numero, notice: 'Numero fue creado.' }
        format.json { render :show, status: :created, location: @numero }
      else
        format.html { render :new }
        format.json { render json: @numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /numeros/1
  # PATCH/PUT /numeros/1.json
  def update
    respond_to do |format|
      if @numero.update(numero_params)
        format.html { redirect_to root_url, notice: 'Los números fueron actualizados correctamente' }
        # format.html { redirect_to @numero, notice: 'Numero fue actualizado.' }
        format.json { render :show, status: :ok, location: @numero }
      else
        format.html { render :edit }
        format.json { render json: @numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /numeros/1
  # DELETE /numeros/1.json
  def destroy
    @numero.destroy
    respond_to do |format|
      format.html { redirect_to numeros_url, notice: 'Numero fue borrado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_numero
      @numero = Numero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def numero_params
      params.require(:numero).permit(:inversion, :fondo, :porcentaje, :canal_id)
    end
end
