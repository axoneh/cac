class CaracteristicaPatologicasController < ApplicationController
  before_action :set_caracteristica_patologica, only: [:show, :edit, :update, :destroy]

  # GET /caracteristica_patologicas
  # GET /caracteristica_patologicas.json
  def index
    @caracteristica_patologicas = CaracteristicaPatologica.all
  end

  # GET /caracteristica_patologicas/1
  # GET /caracteristica_patologicas/1.json
  def show
  end

  # GET /caracteristica_patologicas/new
  def new
    @caracteristica_patologica = CaracteristicaPatologica.new
  end

  # GET /caracteristica_patologicas/1/edit
  def edit
  end

  # POST /caracteristica_patologicas
  # POST /caracteristica_patologicas.json
  def create
    @caracteristica_patologica = CaracteristicaPatologica.new(caracteristica_patologica_params)

    respond_to do |format|
      if @caracteristica_patologica.save
        format.html { redirect_to @caracteristica_patologica, notice: 'Caracteristica patologica was successfully created.' }
        format.json { render :show, status: :created, location: @caracteristica_patologica }
      else
        format.html { render :new }
        format.json { render json: @caracteristica_patologica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteristica_patologicas/1
  # PATCH/PUT /caracteristica_patologicas/1.json
  def update
    respond_to do |format|
      if @caracteristica_patologica.update(caracteristica_patologica_params)
        format.html { redirect_to @caracteristica_patologica, notice: 'Caracteristica patologica was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracteristica_patologica }
      else
        format.html { render :edit }
        format.json { render json: @caracteristica_patologica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristica_patologicas/1
  # DELETE /caracteristica_patologicas/1.json
  def destroy
    @caracteristica_patologica.destroy
    respond_to do |format|
      format.html { redirect_to caracteristica_patologicas_url, notice: 'Caracteristica patologica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristica_patologica
      @caracteristica_patologica = CaracteristicaPatologica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caracteristica_patologica_params
      params.require(:caracteristica_patologica).permit(:nombre, :descripcion)
    end
end
