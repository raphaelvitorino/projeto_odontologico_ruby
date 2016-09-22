class ConsultaController < ApplicationController
  before_action :set_consultum, only: [:show, :update, :destroy]

  # GET /consulta
  def index
    @consulta = Consultum.all

    render json: @consulta
  end

  # GET /consulta/1
  def show
    render json: @consultum
  end

  # POST /consulta
  def create
    @consultum = Consultum.new(consultum_params)

    if @consultum.save
      render json: @consultum, status: :created, location: @consultum
    else
      render json: @consultum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consulta/1
  def update
    if @consultum.update(consultum_params)
      render json: @consultum
    else
      render json: @consultum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /consulta/1
  def destroy
    @consultum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultum
      @consultum = Consultum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def consultum_params
      params.require(:consultum).permit(:data_consulta, :descricao, :procedimento_id, :dentista_id, :paciente_id)
    end
end
