class AnticoagulantesController < ApplicationController
  before_action :set_anticoagulante, only: [:show, :edit, :update, :destroy]

  # GET /anticoagulantes
  # GET /anticoagulantes.json
  def index
    @anticoagulantes = Anticoagulante.all
  end

  # GET /anticoagulantes/1
  # GET /anticoagulantes/1.json
  def show
  end

  # GET /anticoagulantes/new
  def new
    @anticoagulante = Anticoagulante.new
  end

  # GET /anticoagulantes/1/edit
  def edit
  end

  # POST /anticoagulantes
  # POST /anticoagulantes.json
  def create
    @anticoagulante = Anticoagulante.new(anticoagulante_params)

    respond_to do |format|
      if @anticoagulante.save
        format.html { redirect_to @anticoagulante, notice: 'Anticoagulante was successfully created.' }
        format.json { render :show, status: :created, location: @anticoagulante }
      else
        format.html { render :new }
        format.json { render json: @anticoagulante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anticoagulantes/1
  # PATCH/PUT /anticoagulantes/1.json
  def update
    respond_to do |format|
      if @anticoagulante.update(anticoagulante_params)
        format.html { redirect_to @anticoagulante, notice: 'Anticoagulante was successfully updated.' }
        format.json { render :show, status: :ok, location: @anticoagulante }
      else
        format.html { render :edit }
        format.json { render json: @anticoagulante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anticoagulantes/1
  # DELETE /anticoagulantes/1.json
  def destroy
    @anticoagulante.destroy
    respond_to do |format|
      format.html { redirect_to anticoagulantes_url, notice: 'Anticoagulante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anticoagulante
      @anticoagulante = Anticoagulante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anticoagulante_params
      params.require(:anticoagulante).permit(:nombre, :descripcion)
    end
end
