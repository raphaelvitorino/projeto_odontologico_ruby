require 'test_helper'

class ConsultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultum = consulta(:one)
  end

  test "should get index" do
    get consulta_url, as: :json
    assert_response :success
  end

  test "should create consultum" do
    assert_difference('Consultum.count') do
      post consulta_url, params: { consultum: { data_consulta: @consultum.data_consulta, dentista_id: @consultum.dentista_id, descricao: @consultum.descricao, paciente_id: @consultum.paciente_id, procedimento_id: @consultum.procedimento_id } }, as: :json
    end

    assert_response 201
  end

  test "should show consultum" do
    get consultum_url(@consultum), as: :json
    assert_response :success
  end

  test "should update consultum" do
    patch consultum_url(@consultum), params: { consultum: { data_consulta: @consultum.data_consulta, dentista_id: @consultum.dentista_id, descricao: @consultum.descricao, paciente_id: @consultum.paciente_id, procedimento_id: @consultum.procedimento_id } }, as: :json
    assert_response 200
  end

  test "should destroy consultum" do
    assert_difference('Consultum.count', -1) do
      delete consultum_url(@consultum), as: :json
    end

    assert_response 204
  end
end
