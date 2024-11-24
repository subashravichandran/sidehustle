class Api::V1::MoneyLogsController < ApplicationController
  before_action :set_money_log, only: %i[ show edit update destroy ]

  # GET /money_logs or /money_logs.json
  def index
    render json: MoneyLog.all.pluck(:income, :expenses, :id)
  end

  # GET /money_logs/1 or /money_logs/1.json
  def show
    render json: @money_log.as_json(only: [:income, :expenses])
  end

  # GET /money_logs/new
  def new
    render json: MoneyLog.new.as_json
  end

  # GET /money_logs/1/edit
  def edit
    render json: @money_log.as_json(only: [:income, :expenses])
  end

  # POST /money_logs or /money_logs.json
  def create
    @money_log = MoneyLog.new(money_log_params)

    if @money_log.save
      render json: { status: :created, notice: "Saved successfully" }
    else
      render json: { status: :unprocessable_entity, notice: @money_log.errors }
    end
  end

  # PATCH/PUT /money_logs/1 or /money_logs/1.json
  def update
    if @money_log.update(money_log_params)
      render json: { status: :ok, notice: "Updated successfully" }
    else
      render json: { status: :unprocessable_entity, notice: @money_log.errors }
    end
  end

  # DELETE /money_logs/1 or /money_logs/1.json
  def destroy
    @money_log.destroy!

    respond_to do |format|
      format.html { redirect_to money_logs_url, notice: "Money log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_log
      @money_log = MoneyLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def money_log_params
      params.require(:money_log).permit(:income, :expense, :time_period)
    end
end
