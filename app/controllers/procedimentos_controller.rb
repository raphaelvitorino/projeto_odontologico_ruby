class ProcedimentosController < ApplicationController
  before_action :set_procedimento, only: [:show, :update, :destroy]

  # GET /procedimentos
  def index
    @procedimentos = Procedimento.all

    render json: @procedimentos
  end

  # GET /procedimentos/1
  def show
    render json: @procedimento
  end

  # POST /procedimentos
  def create
    @procedimento = Procedimento.new(procedimento_params)

    if @procedimento.save
      render json: @procedimento, status: :created, location: @procedimento
    else
      render json: @procedimento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /procedimentos/1
  def update
    if @procedimento.update(procedimento_params)
      render json: @procedimento
    else
      render json: @procedimento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /procedimentos/1
  def destroy
    @procedimento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedimento
      @procedimento = Procedimento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def procedimento_params
      params.require(:procedimento).permit(:nome, :descricao)
    end
end
