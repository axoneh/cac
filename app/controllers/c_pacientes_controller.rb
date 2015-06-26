class CPacientesController < ApplicationController
  before_action :set_c_paciente, only: [:show, :edit, :update, :destroy]

  # GET /c_pacientes
  # GET /c_pacientes.json
  def index
    @c_pacientes = CPaciente.all
  end

  # GET /c_pacientes/1
  # GET /c_pacientes/1.json
  def show
  end

  # GET /c_pacientes/new
  def new
    @c_paciente = CPaciente.new
  end

  # GET /c_pacientes/1/edit
  def edit
  end

  # POST /c_pacientes
  # POST /c_pacientes.json
  def create
    @c_paciente = CPaciente.new(c_paciente_params)

    respond_to do |format|
      if @c_paciente.save
        format.html { redirect_to @c_paciente, notice: 'C paciente was successfully created.' }
        format.json { render :show, status: :created, location: @c_paciente }
      else
        format.html { render :new }
        format.json { render json: @c_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_pacientes/1
  # PATCH/PUT /c_pacientes/1.json
  def update
    respond_to do |format|
      if @c_paciente.update(c_paciente_params)
        format.html { redirect_to @c_paciente, notice: 'C paciente was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_paciente }
      else
        format.html { render :edit }
        format.json { render json: @c_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_pacientes/1
  # DELETE /c_pacientes/1.json
  def destroy
    @c_paciente.destroy
    respond_to do |format|
      format.html { redirect_to c_pacientes_url, notice: 'C paciente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_paciente
      @c_paciente = CPaciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_paciente_params
      params.require(:c_paciente).permit(:respuesta, :pacientes_id, :caracteristicas_patologicas_id)
    end
end
