class DentistaController < ApplicationController
  before_action :set_dentistum, only: [:show, :update, :destroy]

  # GET /dentista
  def index
    @dentista = Dentistum.all

    render json: @dentista
  end

  # GET /dentista/1
  def show
    render json: @dentistum
  end

  # POST /dentista
  def create
    @dentistum = Dentistum.new(dentistum_params)

    if @dentistum.save
      render json: @dentistum, status: :created, location: @dentistum
    else
      render json: @dentistum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dentista/1
  def update
    if @dentistum.update(dentistum_params)
      render json: @dentistum
    else
      render json: @dentistum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dentista/1
  def destroy
    @dentistum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dentistum
      @dentistum = Dentistum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dentistum_params
      params.require(:dentistum).permit(:nome, :cro, :funcao)
    end
end
