class RelojesController < ApplicationController
  before_action :set_reloj, only: [:show, :edit, :update, :destroy]

  # GET /relojs
  # GET /relojs.json
  def index
    @relojes = Reloj.all
  end

  # GET /relojs/1
  # GET /relojs/1.json
  def show
  end

  # GET /relojs/new
  def new
    @reloj = Reloj.new
  end

  # GET /relojs/1/edit
  def edit
  end

  # POST /relojs
  # POST /relojs.json
  def create
    @reloj = Reloj.new(reloj_params)

    respond_to do |format|
      if @reloj.save
        format.html { redirect_to @reloj, notice: 'Reloj fue creado.' }
        format.json { render :show, status: :created, location: @reloj }
      else
        format.html { render :new }
        format.json { render json: @reloj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relojs/1
  # PATCH/PUT /relojs/1.json
  def update
    respond_to do |format|
      if @reloj.update(reloj_params)
        format.html { redirect_to @reloj, notice: 'Reloj fue actualizado.' }
        format.json { render :show, status: :ok, location: @reloj }
      else
        format.html { render :edit }
        format.json { render json: @reloj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relojs/1
  # DELETE /relojs/1.json
  def destroy
    @reloj.destroy
    respond_to do |format|
      format.html { redirect_to relojes_url, notice: 'Reloj fue borrado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reloj
      @reloj = Reloj.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reloj_params
      params.require(:reloj).permit(:minuto)
    end
end
