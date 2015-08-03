class TypePatiosController < ApplicationController
  before_action :set_type_patio, only: [:show, :edit, :update, :destroy]

  # GET /type_patios
  # GET /type_patios.json
  def index
    @type_patios = TypePatio.all
  end

  # GET /type_patios/1
  # GET /type_patios/1.json
  def show
  end

  # GET /type_patios/new
  def new
    @type_patio = TypePatio.new
  end

  # GET /type_patios/1/edit
  def edit
  end

  # POST /type_patios
  # POST /type_patios.json
  def create
    @type_patio = TypePatio.new(type_patio_params)

    respond_to do |format|
      if @type_patio.save
        format.html { redirect_to @type_patio, notice: 'Type patio was successfully created.' }
        format.json { render :show, status: :created, location: @type_patio }
      else
        format.html { render :new }
        format.json { render json: @type_patio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_patios/1
  # PATCH/PUT /type_patios/1.json
  def update
    respond_to do |format|
      if @type_patio.update(type_patio_params)
        format.html { redirect_to @type_patio, notice: 'Type patio was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_patio }
      else
        format.html { render :edit }
        format.json { render json: @type_patio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_patios/1
  # DELETE /type_patios/1.json
  def destroy
    @type_patio.destroy
    respond_to do |format|
      format.html { redirect_to type_patios_url, notice: 'Type patio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_patio
      @type_patio = TypePatio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_patio_params
      params.require(:type_patio).permit(:name, :initial)
    end
end
