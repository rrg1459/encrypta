class ParesController < ApplicationController
  before_action :set_par, only: [:show, :edit, :update, :destroy]

  # GET /pars
  # GET /pars.json
  def index
    @pares = Par.all.order(nombre: :asc)
  end

  # GET /pars/1
  # GET /pars/1.json
  def show
  end

  # GET /pars/new
  def new
    @par = Par.new
  end

  # GET /pars/1/edit
  def edit
  end

  # POST /pars
  # POST /pars.json
  def create
    @par = Par.new(par_params)

    respond_to do |format|
      if @par.save
        flash[:success] = t(:guardado)
        format.html { redirect_to @par }
        format.json { render :show, status: :created, location: @par }
      else
        # flash[:error] = " Tenemos problemas en encontrar este artículo #{root_url}articulo/#{params[:id]}, por favor contactenos para solucionarlo"
        flash[:error] = t(:no_guardado)
        format.html { render :new }
        format.json { render json: @par.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pars/1
  # PATCH/PUT /pars/1.json
  def update
    respond_to do |format|
      if @par.update(par_params)
        flash[:success] = t(:guardado)
        format.html { redirect_to @par }
        format.json { render :show, status: :ok, location: @par }
      else
        flash[:error] = t(:no_guardado)
        format.html { render :edit }
        format.json { render json: @par.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pars/1
  # DELETE /pars/1.json
  def destroy
    @par.destroy
    respond_to do |format|
      flash[:success] = t(:borrado)
      format.html { redirect_to pares_url }
      format.json { head :no_content }
    end
  end

  # DELETE /pars/1
  # DELETE /pars/1.json
  def destroy
    begin
      @par.destroy
      flash[:success] = t(:borrado)
    rescue => e
      flash[:error] = (@par.opciones.size > 0) ? t(:par_no_borrado) : t(:desconocido)
    end
    respond_to do |format|
      format.html { redirect_to (flash[:error].nil?) ? pares_url : @par }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_par
      @par = Par.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def par_params
      params.require(:par).permit(:nombre, :imagen)
    end
end
