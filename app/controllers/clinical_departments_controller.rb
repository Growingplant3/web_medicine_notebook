class ClinicalDepartmentsController < ApplicationController
  def index
    @clinical_departments = ClinicalDepartment.all
  end

  def new
    @clinical_departments = ClinicalDepartment.new
    # @clinical_departments.vacations.build
  end

  def show
  end

  def edit
    @clinical_department = ClinicalDepartment.find(params[:id])
  end

  def create
    @clinical_department = ClinicalDepartment.new(hospital_params)
    respond_to do |format|
      if @clinical_department.save
        format.html { redirect_to @clinical_department, notice: 'hospital was successfully created.' }
        format.json { render :show, status: :created, location: @clinical_department }
      else
        format.html { render :new }
        format.json { render json: @clinical_department.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def hospital_params
    params.require(:clinical_department).permit(:classification)
  end
end
