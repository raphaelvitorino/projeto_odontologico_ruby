require 'test_helper'

class DentistaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dentistum = dentista(:one)
  end

  test "should get index" do
    get dentista_url, as: :json
    assert_response :success
  end

  test "should create dentistum" do
    assert_difference('Dentistum.count') do
      post dentista_url, params: { dentistum: { cro: @dentistum.cro, funcao: @dentistum.funcao, nome: @dentistum.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show dentistum" do
    get dentistum_url(@dentistum), as: :json
    assert_response :success
  end

  test "should update dentistum" do
    patch dentistum_url(@dentistum), params: { dentistum: { cro: @dentistum.cro, funcao: @dentistum.funcao, nome: @dentistum.nome } }, as: :json
    assert_response 200
  end

  test "should destroy dentistum" do
    assert_difference('Dentistum.count', -1) do
      delete dentistum_url(@dentistum), as: :json
    end

    assert_response 204
  end
end
