class ClinicaldepartmentController < ApplicationController
  def index
    @clinicaldepartments= Clinicaldepartment.all
  end

  def new
    @clinicaldepartments = Clinicaldepartment.new
    @clinicaldepartments.vacations.build
  end

  def show
  end

  def edit
    @clinicaldepartment = Clinicaldepartment.find(params[:id])
  end

  def create
  end
  
  def create
    @clinicaldepartment = Clinicaldepartment.new(hospital_params)
    respond_to do |format|
      if @clinicaldepartment.save
        format.html { redirect_to @clinicaldepartment, notice: 'hospital was successfully created.' }
        format.json { render :show, status: :created, location: @clinicaldepartment }
      else
        format.html { render :new }
        format.json { render json: @clinicaldepartment.errors, status: :unprocessable_entity }
      end
    end
  end  
end
