class InstituationsController < ApplicationController
  before_action :set_instituation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /instituations
  # GET /instituations.json
  def index
    @instituations = Instituation.all
  end

  # GET /instituations/1
  # GET /instituations/1.json
  def show
  end

  # GET /instituations/new
  def new
    @instituation = Instituation.new
  end

  # GET /instituations/1/edit
  def edit
  end

  # POST /instituations
  # POST /instituations.json
  def create
    @instituation = Instituation.new(instituation_params)

    respond_to do |format|
      if @instituation.save
        format.html { redirect_to @instituation, notice: 'Instituation was successfully created.' }
        format.json { render :show, status: :created, location: @instituation }
      else
        format.html { render :new }
        format.json { render json: @instituation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instituations/1
  # PATCH/PUT /instituations/1.json
  def update
    respond_to do |format|
      if @instituation.update(instituation_params)
        format.html { redirect_to @instituation, notice: 'Instituation was successfully updated.' }
        format.json { render :show, status: :ok, location: @instituation }
      else
        format.html { render :edit }
        format.json { render json: @instituation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instituations/1
  # DELETE /instituations/1.json
  def destroy
    @instituation.destroy
    respond_to do |format|
      format.html { redirect_to instituations_url, notice: 'Instituation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instituation
      @instituation = Instituation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instituation_params
      params.require(:instituation).permit(:name)
    end
end
