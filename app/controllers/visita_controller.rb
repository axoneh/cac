class VisitaController < ApplicationController
  before_action :set_visitum, only: [:show, :edit, :update, :destroy]

  # GET /visita
  # GET /visita.json
  def index
    @visita = Visitum.all
  end

  # GET /visita/1
  # GET /visita/1.json
  def show
  end

  # GET /visita/new
  def new
    @visitum = Visitum.new
  end

  # GET /visita/1/edit
  def edit
  end

  # POST /visita
  # POST /visita.json
  def create
    @visitum = Visitum.new(visitum_params)

    respond_to do |format|
      if @visitum.save
        format.html { redirect_to @visitum, notice: 'Visitum was successfully created.' }
        format.json { render :show, status: :created, location: @visitum }
      else
        format.html { render :new }
        format.json { render json: @visitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visita/1
  # PATCH/PUT /visita/1.json
  def update
    respond_to do |format|
      if @visitum.update(visitum_params)
        format.html { redirect_to @visitum, notice: 'Visitum was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitum }
      else
        format.html { render :edit }
        format.json { render json: @visitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visita/1
  # DELETE /visita/1.json
  def destroy
    @visitum.destroy
    respond_to do |format|
      format.html { redirect_to visita_url, notice: 'Visitum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitum
      @visitum = Visitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visitum_params
      params.require(:visitum).permit(:InrDomicilio, :pacientes_id, :observacion)
    end
end
