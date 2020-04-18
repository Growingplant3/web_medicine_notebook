class HospitalsController < ApplicationController
  before_action :set_hospital, only: [:show, :edit, :update, :destroy]

  # GET /hospitals
  # GET /hospitals.json
  def index
    @hospitals = Hospital.all
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
  end

  # GET /hospitals/new
  def new
    @hospital = Hospital.new
    #7.times {@hospital.vacations.build}
    for num in 0..6 do
      @hospital.vacations.build(week_day: num)
    end
     # @hospital.hospital_clinical_department_relations.build
  end

  # GET /hospitals/1/edit
  def edit
    @hospital = Hospital.find(params[:id])
  end

  # POST /hospitals
  # POST /hospitals.json
  def create
    @hospital = Hospital.new(hospital_params)
    respond_to do |format|
      if @hospital.save
        format.html { redirect_to @hospital, notice: 'hospital was successfully created.' }
        format.json { render :show, status: :created, location: @hospital }
      else
        format.html { render :new }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
    # @hospital.hospital_clinical_department_relations.build
  end

  # PATCH/PUT /hospitals/1
  # PATCH/PUT /hospitals/1.json
  def update
    respond_to do |format|
      if @hospital.update(hospital_params)
        format.html { redirect_to @hospital, notice: 'hospital was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital }
      else
        format.html { render :edit }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitals/1
  # DELETE /hospitals/1.json
  def destroy
    @hospital.destroy
    respond_to do |format|
      format.html { redirect_to hospitals_url, notice: 'hospital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital
      @hospital = Hospital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospital_params
      params.require(:hospital).permit(:name, :address, :telephone_number, :mail_address, :holiday, :open, :close, :emergency, :remarks, :postcode, :prefecture_code, :address_city, :address_street, :address_building, :twenty_four, vacations_attributes: [:id, :hospital_id, :week_day,:is_closed], :clinical_department_ids => [])
    end
end