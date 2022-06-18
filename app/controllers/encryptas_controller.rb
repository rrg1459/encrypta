class EncryptasController < ApplicationController
  before_action :set_encrypta, only: %i[ show edit update destroy ]

  # GET /encryptas or /encryptas.json
  def index
    @encryptas = Encrypta.all
  end

  # GET /encryptas/1 or /encryptas/1.json
  def show
  end

  # GET /encryptas/new
  def new
    @encrypta = Encrypta.new
  end

  # GET /encryptas/1/edit
  def edit
  end

  # POST /encryptas or /encryptas.json
  def create
    @encrypta = Encrypta.new(encrypta_params)

    respond_to do |format|
      if @encrypta.save
        format.html { redirect_to encrypta_url(@encrypta), notice: "Encrypta was successfully created." }
        format.json { render :show, status: :created, location: @encrypta }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @encrypta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encryptas/1 or /encryptas/1.json
  def update
    respond_to do |format|
      if @encrypta.update(encrypta_params)
        format.html { redirect_to encrypta_url(@encrypta), notice: "Encrypta was successfully updated." }
        format.json { render :show, status: :ok, location: @encrypta }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @encrypta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encryptas/1 or /encryptas/1.json
  def destroy
    @encrypta.destroy

    respond_to do |format|
      format.html { redirect_to encryptas_url, notice: "Encrypta was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encrypta
      @encrypta = Encrypta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def encrypta_params
      params.require(:encrypta).permit(:inicial, :clave)
    end
end
