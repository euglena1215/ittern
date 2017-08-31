class BenefitsController < ApplicationController
  before_action :set_benefit, only: [:show, :edit, :update, :destroy]

  # GET /benefits
  # GET /benefits.json
  def index
    @benefits = Benefit.all.includes(:review)
  end

  # GET /benefits/1
  # GET /benefits/1.json
  def show
  end

  # GET /benefits/new
  def new
    @benefit = Benefit.new
  end

  # GET /benefits/1/edit
  def edit
  end

  # POST /benefits
  # POST /benefits.json
  def create
    @benefit = Benefit.new(benefit_params)

    if @benefit.save
      redirect_to @benefit, notice: 'Benefit was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /benefits/1
  # PATCH/PUT /benefits/1.json
  def update
    if @benefit.update(benefit_params)
      redirect_to @benefit, notice: 'Benefit was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /benefits/1
  # DELETE /benefits/1.json
  def destroy
    @benefit.destroy!
    redirect_to benefits_url, notice: 'Benefit was successfully destroyed.'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_benefit
      @benefit = Benefit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def benefit_params
      params.require(:benefit).permit(:review_id, :transportation, :accommodation, :wage, :lunch)
    end
end
