class IquipmentsController < ApplicationController
  before_action :set_iquipment, only: [:show, :edit, :update, :destroy]

  # GET /iquipments
  # GET /iquipments.json
  def index
    @iquipments = Iquipment.all
  end

  # GET /iquipments/1
  # GET /iquipments/1.json
  def show
  end

  # GET /iquipments/new
  def new
    @iquipment = Iquipment.new
  end

  # GET /iquipments/1/edit
  def edit
  end

  # POST /iquipments
  # POST /iquipments.json
  def create
    @iquipment = Iquipment.new(iquipment_params)

    respond_to do |format|
      if @iquipment.save
        format.html { redirect_to @iquipment, notice: 'Iquipment was successfully created.' }
        format.json { render :show, status: :created, location: @iquipment }
      else
        format.html { render :new }
        format.json { render json: @iquipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iquipments/1
  # PATCH/PUT /iquipments/1.json
  def update
    respond_to do |format|
      if @iquipment.update(iquipment_params)
        format.html { redirect_to @iquipment, notice: 'Iquipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @iquipment }
      else
        format.html { render :edit }
        format.json { render json: @iquipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iquipments/1
  # DELETE /iquipments/1.json
  def destroy
    @iquipment.destroy
    respond_to do |format|
      format.html { redirect_to iquipments_url, notice: 'Iquipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iquipment
      @iquipment = Iquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iquipment_params
      params.require(:iquipment).permit(:equipo, :cantidad, :tiempo, :potencia)
    end
end
