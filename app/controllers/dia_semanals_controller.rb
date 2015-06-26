class DiaSemanalsController < ApplicationController
  before_action :set_dia_semanal, only: [:show, :edit, :update, :destroy]

  # GET /dia_semanals
  # GET /dia_semanals.json
  def index
    @dia_semanals = DiaSemanal.all
  end

  # GET /dia_semanals/1
  # GET /dia_semanals/1.json
  def show
  end

  # GET /dia_semanals/new
  def new
    @dia_semanal = DiaSemanal.new
  end

  # GET /dia_semanals/1/edit
  def edit
  end

  # POST /dia_semanals
  # POST /dia_semanals.json
  def create
    @dia_semanal = DiaSemanal.new(dia_semanal_params)

    respond_to do |format|
      if @dia_semanal.save
        format.html { redirect_to @dia_semanal, notice: 'Dia semanal was successfully created.' }
        format.json { render :show, status: :created, location: @dia_semanal }
      else
        format.html { render :new }
        format.json { render json: @dia_semanal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dia_semanals/1
  # PATCH/PUT /dia_semanals/1.json
  def update
    respond_to do |format|
      if @dia_semanal.update(dia_semanal_params)
        format.html { redirect_to @dia_semanal, notice: 'Dia semanal was successfully updated.' }
        format.json { render :show, status: :ok, location: @dia_semanal }
      else
        format.html { render :edit }
        format.json { render json: @dia_semanal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dia_semanals/1
  # DELETE /dia_semanals/1.json
  def destroy
    @dia_semanal.destroy
    respond_to do |format|
      format.html { redirect_to dia_semanals_url, notice: 'Dia semanal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dia_semanal
      @dia_semanal = DiaSemanal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dia_semanal_params
      params.require(:dia_semanal).permit(:numero, :nombre)
    end
end
