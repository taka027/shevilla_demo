class VillasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  
  before_action :set_villa, only: [:show, :edit, :update, :destroy]

  # GET /villas
  # GET /villas.json
  def index
    @villas = Villa.all
  end

  # GET /villas/1
  # GET /villas/1.json
  def show
  end

  # GET /villas/new
  def new
    @villa = Villa.new
  end

  # GET /villas/1/edit
  def edit
  end

  # POST /villas
  # POST /villas.json
  def create
    @villa = Villa.new(villa_params)

    respond_to do |format|
      if @villa.save
        format.html { redirect_to @villa, notice: 'Villa was successfully created.' }
        format.json { render :show, status: :created, location: @villa }
      else
        format.html { render :new }
        format.json { render json: @villa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /villas/1
  # PATCH/PUT /villas/1.json
  def update
    respond_to do |format|
      if @villa.update(villa_params)
        format.html { redirect_to @villa, notice: 'Villa was successfully updated.' }
        format.json { render :show, status: :ok, location: @villa }
      else
        format.html { render :edit }
        format.json { render json: @villa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /villas/1
  # DELETE /villas/1.json
  def destroy
    @villa.destroy
    respond_to do |format|
      format.html { redirect_to villas_url, notice: 'Villa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_villa
      @villa = Villa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def villa_params
      params.require(:villa).permit(:address, :title, :area, :description, :price, :category)
    end
end
