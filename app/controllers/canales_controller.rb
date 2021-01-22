class CanalesController < ApplicationController

  before_action :set_par, only: [:show, :edit, :update, :destroy]

  # GET /pars
  # GET /pars.json
  def index
    @canales = Canal.all
  end

  # GET /pars/1
  # GET /pars/1.json
  def show
  end

  # GET /pars/new
  def new
    @canal = Canal.new
  end

  # GET /pars/1/edit
  def edit
  end

  # POST /pars
  # POST /pars.json
  def create
    @canal = Canal.new(par_params)

    respond_to do |format|
      if @canal.save
        flash[:success] = t(:guardado)
        format.html { redirect_to @canal }
        format.json { render :show, status: :created, location: @canal }
      else
        flash[:error] = t(:no_guardado)
        format.html { render :new }
        format.json { render json: @canal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pars/1
  # PATCH/PUT /pars/1.json
  def update
    respond_to do |format|
      if @canal.update(par_params)
        flash[:success] = t(:guardado)
        format.html { redirect_to @canal }
        format.json { render :show, status: :ok, location: @canal }
      else
        flash[:error] = t(:no_guardado)
        format.html { render :edit }
        format.json { render json: @canal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pars/1
  # DELETE /pars/1.json
  def destroy
    begin
      @canal.destroy
      flash[:success] = t(:borrado)
    rescue => e
      flash[:error] = (@canal.opciones.size > 0) ? t(:canal_no_borrado) : t(:desconocido)
    end
    respond_to do |format|
      format.html { redirect_to (flash[:error].nil?) ? canales_url : @canal }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_par
      @canal = Canal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def par_params
      params.require(:canal).permit(:nombre)
    end
end
