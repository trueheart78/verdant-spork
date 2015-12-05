class HeartRatesController < ApplicationController
  before_action :set_heart_rate, only: [:show, :edit, :update, :destroy]

  # GET /heart_rates
  # GET /heart_rates.json
  def index
    @heart_rates = HeartRate.all
  end

  # GET /heart_rates/1
  # GET /heart_rates/1.json
  def show
  end

  # GET /heart_rates/new
  def new
    @heart_rate = HeartRate.new
  end

  # GET /heart_rates/1/edit
  def edit
  end

  # POST /heart_rates
  # POST /heart_rates.json
  def create
    @heart_rate = HeartRate.new(heart_rate_params)

    respond_to do |format|
      if @heart_rate.save
        format.html { redirect_to @heart_rate, notice: 'Heart rate was successfully created.' }
        format.json { render :show, status: :created, location: @heart_rate }
      else
        format.html { render :new }
        format.json { render json: @heart_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heart_rates/1
  # PATCH/PUT /heart_rates/1.json
  def update
    respond_to do |format|
      if @heart_rate.update(heart_rate_params)
        format.html { redirect_to @heart_rate, notice: 'Heart rate was successfully updated.' }
        format.json { render :show, status: :ok, location: @heart_rate }
      else
        format.html { render :edit }
        format.json { render json: @heart_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heart_rates/1
  # DELETE /heart_rates/1.json
  def destroy
    @heart_rate.destroy
    respond_to do |format|
      format.html { redirect_to heart_rates_url, notice: 'Heart rate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heart_rate
      @heart_rate = HeartRate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heart_rate_params
      params.require(:heart_rate).permit(:name, :age, :resting_pulse)
    end
end
