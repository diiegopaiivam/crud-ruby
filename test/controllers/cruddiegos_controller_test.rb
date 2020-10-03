require 'test_helper'

class CruddiegosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cruddiego = cruddiegos(:one)
  end

  test "should get index" do
    get cruddiegos_url
    assert_response :success
  end

  test "should get new" do
    get new_cruddiego_url
    assert_response :success
  end

  test "should create cruddiego" do
    assert_difference('Cruddiego.count') do
      post cruddiegos_url, params: { cruddiego: { email: @cruddiego.email, endereco: @cruddiego.endereco, nome: @cruddiego.nome, telefone: @cruddiego.telefone, whatsapp: @cruddiego.whatsapp } }
    end

    assert_redirected_to cruddiego_url(Cruddiego.last)
  end

  test "should show cruddiego" do
    get cruddiego_url(@cruddiego)
    assert_response :success
  end

  test "should get edit" do
    get edit_cruddiego_url(@cruddiego)
    assert_response :success
  end

  test "should update cruddiego" do
    patch cruddiego_url(@cruddiego), params: { cruddiego: { email: @cruddiego.email, endereco: @cruddiego.endereco, nome: @cruddiego.nome, telefone: @cruddiego.telefone, whatsapp: @cruddiego.whatsapp } }
    assert_redirected_to cruddiego_url(@cruddiego)
  end

  test "should destroy cruddiego" do
    assert_difference('Cruddiego.count', -1) do
      delete cruddiego_url(@cruddiego)
    end

    assert_redirected_to cruddiegos_url
  end
end
