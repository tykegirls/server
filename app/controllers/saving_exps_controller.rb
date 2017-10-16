class SavingExpsController < ApplicationController
  before_action :set_saving_exp, only: [:show, :edit, :update, :destroy]

  # GET /saving_exps
  # GET /saving_exps.json
  def index
    @saving_exps = SavingExp.all
  end

  # GET /saving_exps/1
  # GET /saving_exps/1.json
  def show
  end

  # GET /saving_exps/new
  def new
    @saving_exp = SavingExp.new
  end

  # GET /saving_exps/1/edit
  def edit
  end

  # POST /saving_exps
  # POST /saving_exps.json
  def create
    @saving_exp = SavingExp.new(saving_exp_params)

    respond_to do |format|
      if @saving_exp.save
        format.html { redirect_to @saving_exp, notice: 'Saving exp was successfully created.' }
        format.json { render :show, status: :created, location: @saving_exp }
      else
        format.html { render :new }
        format.json { render json: @saving_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saving_exps/1
  # PATCH/PUT /saving_exps/1.json
  def update
    respond_to do |format|
      if @saving_exp.update(saving_exp_params)
        format.html { redirect_to @saving_exp, notice: 'Saving exp was successfully updated.' }
        format.json { render :show, status: :ok, location: @saving_exp }
      else
        format.html { render :edit }
        format.json { render json: @saving_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saving_exps/1
  # DELETE /saving_exps/1.json
  def destroy
    @saving_exp.destroy
    respond_to do |format|
      format.html { redirect_to saving_exps_url, notice: 'Saving exp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saving_exp
      @saving_exp = SavingExp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saving_exp_params
      params.fetch(:saving_exp, {})
    end
end
