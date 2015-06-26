class PrescripcionDiariaController < ApplicationController
  before_action :set_prescripcion_diarium, only: [:show, :edit, :update, :destroy]

  # GET /prescripcion_diaria
  # GET /prescripcion_diaria.json
  def index
    @prescripcion_diaria = PrescripcionDiarium.all
  end

  # GET /prescripcion_diaria/1
  # GET /prescripcion_diaria/1.json
  def show
  end

  # GET /prescripcion_diaria/new
  def new
    @prescripcion_diarium = PrescripcionDiarium.new
  end

  # GET /prescripcion_diaria/1/edit
  def edit
  end

  # POST /prescripcion_diaria
  # POST /prescripcion_diaria.json
  def create
    @prescripcion_diarium = PrescripcionDiarium.new(prescripcion_diarium_params)

    respond_to do |format|
      if @prescripcion_diarium.save
        format.html { redirect_to @prescripcion_diarium, notice: 'Prescripcion diarium was successfully created.' }
        format.json { render :show, status: :created, location: @prescripcion_diarium }
      else
        format.html { render :new }
        format.json { render json: @prescripcion_diarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescripcion_diaria/1
  # PATCH/PUT /prescripcion_diaria/1.json
  def update
    respond_to do |format|
      if @prescripcion_diarium.update(prescripcion_diarium_params)
        format.html { redirect_to @prescripcion_diarium, notice: 'Prescripcion diarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @prescripcion_diarium }
      else
        format.html { render :edit }
        format.json { render json: @prescripcion_diarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescripcion_diaria/1
  # DELETE /prescripcion_diaria/1.json
  def destroy
    @prescripcion_diarium.destroy
    respond_to do |format|
      format.html { redirect_to prescripcion_diaria_url, notice: 'Prescripcion diarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescripcion_diarium
      @prescripcion_diarium = PrescripcionDiarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescripcion_diarium_params
      params.require(:prescripcion_diarium).permit(:cantidadGramos, :prescripcions_id, :dia_semanals_id)
    end
end
