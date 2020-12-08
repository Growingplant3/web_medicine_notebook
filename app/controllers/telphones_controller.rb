class TelphonesController < ApplicationController
  before_action :set_telphone, only: [:show, :edit, :update, :destroy]

  # GET /telphones
  # GET /telphones.json
  def index
    @telphones = Telphone.all
  end

  # GET /telphones/1
  # GET /telphones/1.json
  def show
  end

  # GET /telphones/new
  def new
    @telphone = Telphone.new
  end

  # GET /telphones/1/edit
  def edit
  end

  # POST /telphones
  # POST /telphones.json
  def create
    @telphone = Telphone.new(telphone_params)

    respond_to do |format|
      if @telphone.save
        format.html { redirect_to @telphone, notice: 'Telphone was successfully created.' }
        format.json { render :show, status: :created, location: @telphone }
      else
        format.html { render :new }
        format.json { render json: @telphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telphones/1
  # PATCH/PUT /telphones/1.json
  def update
    respond_to do |format|
      if @telphone.update(telphone_params)
        format.html { redirect_to @telphone, notice: 'Telphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @telphone }
      else
        format.html { render :edit }
        format.json { render json: @telphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telphones/1
  # DELETE /telphones/1.json
  def destroy
    @telphone.destroy
    respond_to do |format|
      format.html { redirect_to telphones_url, notice: 'Telphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telphone
      @telphone = Telphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telphone_params
      params.require(:telphone).permit(:num1, :num2, :num3)
    end
end
