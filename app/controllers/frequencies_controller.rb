class FrequenciesController < ApplicationController
  before_action :set_frequency, only: [:show, :edit, :update, :destroy]
  before_action :set_frequencies_for_person , only: [:frequency_list]
  before_action :set_frequencies_for_session , only: [:new]
  before_action :set_frequencies_for_cpf , only: [:find_by_cpf]
  before_action :authenticate_user!

  # GET /frequencies
  # GET /frequencies.json
  def index
    session.delete(:id_user)
    @frequencies = Frequency.all
  end

  # GET /frequencies/1
  # GET /frequencies/1.json
  def show
  end

  # GET /frequencies/new
  def new
    @frequency = Frequency.new
    if session.has_key?(:id_user)
      @frequency.person_id = session[:id_user]
    else
      @frequency.person_id = nil
    end
  end

  def frequency_list
    render partial: "table_frequencies",
             locals: { frequencies: @frequencies},
             layout: false
  end

  def find_by_cpf
    frequencies = []

    if !@person.blank?
      frequencies = @person.frequencies
      session[:id_user] = @person.id
    else
      session.delete(:id_user)
    end

    render partial: "table_frequencies_index",
             locals: { frequencies: frequencies},
             layout: false
  end

  # GET /frequencies/1/edit
  def edit
  end

  # POST /frequencies
  # POST /frequencies.json
  def create
    @frequency = Frequency.new(frequency_params)

    respond_to do |format|
      if @frequency.save
        format.html { redirect_to new_frequency_path, notice: 'Frequency was successfully created.' }
        format.json { render :show, status: :created, location: @frequency }
      else
        format.html { render :new }
        format.json { render json: @frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frequencies/1
  # PATCH/PUT /frequencies/1.json
  def update
    respond_to do |format|
      if @frequency.update(frequency_params)
        format.html { redirect_to @frequency, notice: 'Frequency was successfully updated.' }
        format.json { render :show, status: :ok, location: @frequency }
      else
        format.html { render :edit }
        format.json { render json: @frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frequencies/1
  # DELETE /frequencies/1.json
  def destroy
    @frequency.destroy
    respond_to do |format|
      format.html { redirect_to frequencies_url, notice: 'Frequency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequency
      @frequency = Frequency.find(params[:id])
      #@frequency_for_person = Frequency.find_by(id)
    end

    def set_frequencies_for_person
      @frequencies = Frequency.where(person_id: params[:id])
    end

    def set_frequencies_for_cpf
      @person = Person.where(cpf: params[:cpf]).first
    end

    def set_frequencies_for_session
      @frequencies = Frequency.where(person_id: session[:id_user])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frequency_params
      params.require(:frequency).permit(:person_id, :frequency_date, :time_input, :time_output)
    end
end
