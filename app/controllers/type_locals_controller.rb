class TypeLocalsController < ApplicationController
  before_action :set_type_local, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /type_locals
  # GET /type_locals.json
  def index
    @type_locals = TypeLocal.all
  end

  # GET /type_locals/1
  # GET /type_locals/1.json
  def show
  end

  # GET /type_locals/new
  def new
    @type_local = TypeLocal.new
  end

  # GET /type_locals/1/edit
  def edit
  end

  # POST /type_locals
  # POST /type_locals.json
  def create
    @type_local = TypeLocal.new(type_local_params)

    respond_to do |format|
      if @type_local.save
        format.html { redirect_to @type_local, notice: 'Type local was successfully created.' }
        format.json { render :show, status: :created, location: @type_local }
      else
        format.html { render :new }
        format.json { render json: @type_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_locals/1
  # PATCH/PUT /type_locals/1.json
  def update
    respond_to do |format|
      if @type_local.update(type_local_params)
        format.html { redirect_to @type_local, notice: 'Type local was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_local }
      else
        format.html { render :edit }
        format.json { render json: @type_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_locals/1
  # DELETE /type_locals/1.json
  def destroy
    @type_local.destroy
    respond_to do |format|
      format.html { redirect_to type_locals_url, notice: 'Type local was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_local
      @type_local = TypeLocal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_local_params
      params.require(:type_local).permit(:name)
    end
end
