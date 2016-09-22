require 'test_helper'

class PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get pacientes_url, as: :json
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post pacientes_url, params: { paciente: { cpf: @paciente.cpf, nome: @paciente.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show paciente" do
    get paciente_url(@paciente), as: :json
    assert_response :success
  end

  test "should update paciente" do
    patch paciente_url(@paciente), params: { paciente: { cpf: @paciente.cpf, nome: @paciente.nome } }, as: :json
    assert_response 200
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete paciente_url(@paciente), as: :json
    end

    assert_response 204
  end
end
