class PreguntaVisitaController < ApplicationController
  before_action :set_pregunta_visitum, only: [:show, :edit, :update, :destroy]

  # GET /pregunta_visita
  # GET /pregunta_visita.json
  def index
    @pregunta_visita = PreguntaVisitum.all
  end

  # GET /pregunta_visita/1
  # GET /pregunta_visita/1.json
  def show
  end

  # GET /pregunta_visita/new
  def new
    @pregunta_visitum = PreguntaVisitum.new
  end

  # GET /pregunta_visita/1/edit
  def edit
  end

  # POST /pregunta_visita
  # POST /pregunta_visita.json
  def create
    @pregunta_visitum = PreguntaVisitum.new(pregunta_visitum_params)

    respond_to do |format|
      if @pregunta_visitum.save
        format.html { redirect_to @pregunta_visitum, notice: 'Pregunta visitum was successfully created.' }
        format.json { render :show, status: :created, location: @pregunta_visitum }
      else
        format.html { render :new }
        format.json { render json: @pregunta_visitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregunta_visita/1
  # PATCH/PUT /pregunta_visita/1.json
  def update
    respond_to do |format|
      if @pregunta_visitum.update(pregunta_visitum_params)
        format.html { redirect_to @pregunta_visitum, notice: 'Pregunta visitum was successfully updated.' }
        format.json { render :show, status: :ok, location: @pregunta_visitum }
      else
        format.html { render :edit }
        format.json { render json: @pregunta_visitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregunta_visita/1
  # DELETE /pregunta_visita/1.json
  def destroy
    @pregunta_visitum.destroy
    respond_to do |format|
      format.html { redirect_to pregunta_visita_url, notice: 'Pregunta visitum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregunta_visitum
      @pregunta_visitum = PreguntaVisitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregunta_visitum_params
      params.require(:pregunta_visitum).permit(:pregunta, :descripcion)
    end
end
