class RespuestaVsController < ApplicationController
  before_action :set_respuesta_v, only: [:show, :edit, :update, :destroy]

  # GET /respuesta_vs
  # GET /respuesta_vs.json
  def index
    @respuesta_vs = RespuestaV.all
  end

  # GET /respuesta_vs/1
  # GET /respuesta_vs/1.json
  def show
  end

  # GET /respuesta_vs/new
  def new
    @respuesta_v = RespuestaV.new
  end

  # GET /respuesta_vs/1/edit
  def edit
  end

  # POST /respuesta_vs
  # POST /respuesta_vs.json
  def create
    @respuesta_v = RespuestaV.new(respuesta_v_params)

    respond_to do |format|
      if @respuesta_v.save
        format.html { redirect_to @respuesta_v, notice: 'Respuesta v was successfully created.' }
        format.json { render :show, status: :created, location: @respuesta_v }
      else
        format.html { render :new }
        format.json { render json: @respuesta_v.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /respuesta_vs/1
  # PATCH/PUT /respuesta_vs/1.json
  def update
    respond_to do |format|
      if @respuesta_v.update(respuesta_v_params)
        format.html { redirect_to @respuesta_v, notice: 'Respuesta v was successfully updated.' }
        format.json { render :show, status: :ok, location: @respuesta_v }
      else
        format.html { render :edit }
        format.json { render json: @respuesta_v.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /respuesta_vs/1
  # DELETE /respuesta_vs/1.json
  def destroy
    @respuesta_v.destroy
    respond_to do |format|
      format.html { redirect_to respuesta_vs_url, notice: 'Respuesta v was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respuesta_v
      @respuesta_v = RespuestaV.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def respuesta_v_params
      params.require(:respuesta_v).permit(:visita_id, :pregunta_visita_id)
    end
end
