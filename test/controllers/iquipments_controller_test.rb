require 'test_helper'

class IquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iquipment = iquipments(:one)
  end

  test "should get index" do
    get iquipments_url
    assert_response :success
  end

  test "should get new" do
    get new_iquipment_url
    assert_response :success
  end

  test "should create iquipment" do
    assert_difference('Iquipment.count') do
      post iquipments_url, params: { iquipment: { cantidad: @iquipment.cantidad, equipo: @iquipment.equipo, potencia: @iquipment.potencia, tiempo: @iquipment.tiempo } }
    end

    assert_redirected_to iquipment_url(Iquipment.last)
  end

  test "should show iquipment" do
    get iquipment_url(@iquipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_iquipment_url(@iquipment)
    assert_response :success
  end

  test "should update iquipment" do
    patch iquipment_url(@iquipment), params: { iquipment: { cantidad: @iquipment.cantidad, equipo: @iquipment.equipo, potencia: @iquipment.potencia, tiempo: @iquipment.tiempo } }
    assert_redirected_to iquipment_url(@iquipment)
  end

  test "should destroy iquipment" do
    assert_difference('Iquipment.count', -1) do
      delete iquipment_url(@iquipment)
    end

    assert_redirected_to iquipments_url
  end
end
