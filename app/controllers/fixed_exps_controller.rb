class FixedExpsController < ApplicationController
  before_action :set_fixed_exp, only: [:show, :edit, :update, :destroy]

  # GET /fixed_exps
  # GET /fixed_exps.json
  def index
    @fixed_exps = FixedExp.all
  end

  # GET /fixed_exps/1
  # GET /fixed_exps/1.json
  def show
  end

  # GET /fixed_exps/new
  def new
    @fixed_exp = FixedExp.new
  end

  # GET /fixed_exps/1/edit
  def edit
  end

  # POST /fixed_exps
  # POST /fixed_exps.json
  def create
    @fixed_exp = FixedExp.new(fixed_exp_params)

    respond_to do |format|
      if @fixed_exp.save
        format.html { redirect_to @fixed_exp, notice: 'Fixed exp was successfully created.' }
        format.json { render :show, status: :created, location: @fixed_exp }
      else
        format.html { render :new }
        format.json { render json: @fixed_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixed_exps/1
  # PATCH/PUT /fixed_exps/1.json
  def update
    respond_to do |format|
      if @fixed_exp.update(fixed_exp_params)
        format.html { redirect_to @fixed_exp, notice: 'Fixed exp was successfully updated.' }
        format.json { render :show, status: :ok, location: @fixed_exp }
      else
        format.html { render :edit }
        format.json { render json: @fixed_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixed_exps/1
  # DELETE /fixed_exps/1.json
  def destroy
    @fixed_exp.destroy
    respond_to do |format|
      format.html { redirect_to fixed_exps_url, notice: 'Fixed exp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixed_exp
      @fixed_exp = FixedExp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixed_exp_params
      params.fetch(:fixed_exp, {})
    end
end
