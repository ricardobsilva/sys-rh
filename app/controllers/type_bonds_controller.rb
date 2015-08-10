class TypeBondsController < ApplicationController
  before_action :set_type_bond, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /type_bonds
  # GET /type_bonds.json
  def index
    @type_bonds = TypeBond.all
  end

  # GET /type_bonds/1
  # GET /type_bonds/1.json
  def show
  end

  # GET /type_bonds/new
  def new
    @type_bond = TypeBond.new
  end

  # GET /type_bonds/1/edit
  def edit
  end

  # POST /type_bonds
  # POST /type_bonds.json
  def create
    @type_bond = TypeBond.new(type_bond_params)

    respond_to do |format|
      if @type_bond.save
        format.html { redirect_to @type_bond, notice: 'Type bond was successfully created.' }
        format.json { render :show, status: :created, location: @type_bond }
      else
        format.html { render :new }
        format.json { render json: @type_bond.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_bonds/1
  # PATCH/PUT /type_bonds/1.json
  def update
    respond_to do |format|
      if @type_bond.update(type_bond_params)
        format.html { redirect_to @type_bond, notice: 'Type bond was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_bond }
      else
        format.html { render :edit }
        format.json { render json: @type_bond.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_bonds/1
  # DELETE /type_bonds/1.json
  def destroy
    @type_bond.destroy
    respond_to do |format|
      format.html { redirect_to type_bonds_url, notice: 'Type bond was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_bond
      @type_bond = TypeBond.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_bond_params
      params.require(:type_bond).permit(:name, :abbreviation)
    end
end
