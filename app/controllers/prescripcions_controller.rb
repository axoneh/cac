class PrescripcionsController < ApplicationController
  before_action :set_prescripcion, only: [:show, :edit, :update, :destroy]

  # GET /prescripcions
  # GET /prescripcions.json
  def index
    @prescripcions = Prescripcion.all
  end

  # GET /prescripcions/1
  # GET /prescripcions/1.json
  def show
  end

  # GET /prescripcions/new
  def new
    @prescripcion = Prescripcion.new
  end

  # GET /prescripcions/1/edit
  def edit
  end

  # POST /prescripcions
  # POST /prescripcions.json
  def create
    @prescripcion = Prescripcion.new(prescripcion_params)

    respond_to do |format|
      if @prescripcion.save
        format.html { redirect_to @prescripcion, notice: 'Prescripcion was successfully created.' }
        format.json { render :show, status: :created, location: @prescripcion }
      else
        format.html { render :new }
        format.json { render json: @prescripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescripcions/1
  # PATCH/PUT /prescripcions/1.json
  def update
    respond_to do |format|
      if @prescripcion.update(prescripcion_params)
        format.html { redirect_to @prescripcion, notice: 'Prescripcion was successfully updated.' }
        format.json { render :show, status: :ok, location: @prescripcion }
      else
        format.html { render :edit }
        format.json { render json: @prescripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescripcions/1
  # DELETE /prescripcions/1.json
  def destroy
    @prescripcion.destroy
    respond_to do |format|
      format.html { redirect_to prescripcions_url, notice: 'Prescripcion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescripcion
      @prescripcion = Prescripcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescripcion_params
      params.require(:prescripcion).permit(:diasValidez, :anticoagulantes_id, :visita_id, :cuenta_usuarios_id)
    end
end
