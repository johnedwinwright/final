class PlateChecksController < ApplicationController
  before_action :set_plate_check, only: [:show, :edit, :update, :destroy]

  # GET /plate_checks
  # GET /plate_checks.json
  def index
    @plate_checks = PlateCheck.all
  end

  # GET /plate_checks/1
  # GET /plate_checks/1.json
  def show
  end

  # GET /plate_checks/new
  def new
    @plate_check = PlateCheck.new
  end

  # GET /plate_checks/1/edit
  def edit
  end

  # POST /plate_checks
  # POST /plate_checks.json
  def create
    @vehicle = Vehicle.all
    @plate_check = PlateCheck.new(plate_check_params)
      respond_to do |format|
      if @vehicle.find_by_plate_number(@plate_check.name)
        format.html { redirect_to new_rage_path, notice: 'Plate exists' }
        format.json { render :show, status: :created, location: @rage }
      else
        format.html { redirect_to new_vehicle_path, notice: 'please add plate' }
        format.json { render :show, status: :created, location: @vehicle }
      end
    end
  end

  # PATCH/PUT /plate_checks/1
  # PATCH/PUT /plate_checks/1.json
  def update
    respond_to do |format|
      if @plate_check.update(plate_check_params)
        format.html { redirect_to @plate_check, notice: 'Plate check was successfully updated.' }
        format.json { render :show, status: :ok, location: @plate_check }
      else
        format.html { render :edit }
        format.json { render json: @plate_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plate_checks/1
  # DELETE /plate_checks/1.json
  def destroy
    @plate_check.destroy
    respond_to do |format|
      format.html { redirect_to plate_checks_url, notice: 'Plate check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plate_check
      @plate_check = PlateCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plate_check_params
      params.require(:plate_check).permit(:name)
    end
end
