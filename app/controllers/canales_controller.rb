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
        format.html { redirect_to @canal, notice: 'Canal fue creado.' }
        format.json { render :show, status: :created, location: @canal }
      else
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
        format.html { redirect_to @canal, notice: 'Canal fue actualizado.' }
        format.json { render :show, status: :ok, location: @canal }
      else
        format.html { render :edit }
        format.json { render json: @canal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pars/1
  # DELETE /pars/1.json
  def destroy
    @canal.destroy
    respond_to do |format|
      format.html { redirect_to canales_url, notice: 'Canal fue borrado.' }
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
