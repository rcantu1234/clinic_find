class ClinicmapsController < ApplicationController
  before_action :set_clinicmap, only: [:show, :edit, :update, :destroy]

  # GET /clinicmaps
  # GET /clinicmaps.json
  def index
    @clinicmaps = Clinicmap.all
  end

  # GET /clinicmaps/1
  # GET /clinicmaps/1.json
  def show
  end

  # GET /clinicmaps/new
  def new
    @clinicmap = Clinicmap.new
  end

  # GET /clinicmaps/1/edit
  def edit
  end

  # POST /clinicmaps
  # POST /clinicmaps.json
  def create
    @clinicmap = Clinicmap.new(clinicmap_params)

    respond_to do |format|
      if @clinicmap.save
        format.html { redirect_to @clinicmap, notice: 'Clinicmap was successfully created.' }
        format.json { render :show, status: :created, location: @clinicmap }
      else
        format.html { render :new }
        format.json { render json: @clinicmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinicmaps/1
  # PATCH/PUT /clinicmaps/1.json
  def update
    respond_to do |format|
      if @clinicmap.update(clinicmap_params)
        format.html { redirect_to @clinicmap, notice: 'Clinicmap was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinicmap }
      else
        format.html { render :edit }
        format.json { render json: @clinicmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinicmaps/1
  # DELETE /clinicmaps/1.json
  def destroy
    @clinicmap.destroy
    respond_to do |format|
      format.html { redirect_to clinicmaps_url, notice: 'Clinicmap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinicmap
      @clinicmap = Clinicmap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinicmap_params
      params[:clinicmap]
    end
end
