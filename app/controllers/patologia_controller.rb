class PatologiaController < ApplicationController
  before_action :set_patologium, only: [:show, :edit, :update, :destroy]

  # GET /patologia
  # GET /patologia.json
  def index
    @patologia = Patologium.all
  end

  # GET /patologia/1
  # GET /patologia/1.json
  def show
  end

  # GET /patologia/new
  def new
    @patologium = Patologium.new
  end

  # GET /patologia/1/edit
  def edit
  end

  # POST /patologia
  # POST /patologia.json
  def create
    @patologium = Patologium.new(patologium_params)

    respond_to do |format|
      if @patologium.save
        format.html { redirect_to @patologium, notice: 'Patologium was successfully created.' }
        format.json { render :show, status: :created, location: @patologium }
      else
        format.html { render :new }
        format.json { render json: @patologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patologia/1
  # PATCH/PUT /patologia/1.json
  def update
    respond_to do |format|
      if @patologium.update(patologium_params)
        format.html { redirect_to @patologium, notice: 'Patologium was successfully updated.' }
        format.json { render :show, status: :ok, location: @patologium }
      else
        format.html { render :edit }
        format.json { render json: @patologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patologia/1
  # DELETE /patologia/1.json
  def destroy
    @patologium.destroy
    respond_to do |format|
      format.html { redirect_to patologia_url, notice: 'Patologium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patologium
      @patologium = Patologium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patologium_params
      params.require(:patologium).permit(:nombre, :descripcion)
    end
end
