require 'test_helper'

class ProcedimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @procedimento = procedimentos(:one)
  end

  test "should get index" do
    get procedimentos_url, as: :json
    assert_response :success
  end

  test "should create procedimento" do
    assert_difference('Procedimento.count') do
      post procedimentos_url, params: { procedimento: { descricao: @procedimento.descricao, nome: @procedimento.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show procedimento" do
    get procedimento_url(@procedimento), as: :json
    assert_response :success
  end

  test "should update procedimento" do
    patch procedimento_url(@procedimento), params: { procedimento: { descricao: @procedimento.descricao, nome: @procedimento.nome } }, as: :json
    assert_response 200
  end

  test "should destroy procedimento" do
    assert_difference('Procedimento.count', -1) do
      delete procedimento_url(@procedimento), as: :json
    end

    assert_response 204
  end
end
