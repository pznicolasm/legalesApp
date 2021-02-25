require "test_helper"

class ActaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actum = acta(:one)
  end

  test "should get index" do
    get acta_url
    assert_response :success
  end

  test "should get new" do
    get new_actum_url
    assert_response :success
  end

  test "should create actum" do
    assert_difference('Actum.count') do
      post acta_url, params: { actum: { articulo: @actum.articulo, autoridad: @actum.autoridad, dominio: @actum.dominio, fecha: @actum.fecha, juzgado: @actum.juzgado, num_acta: @actum.num_acta, pertenece_a: @actum.pertenece_a, tipo_vehiculo: @actum.tipo_vehiculo } }
    end

    assert_redirected_to actum_url(Actum.last)
  end

  test "should show actum" do
    get actum_url(@actum)
    assert_response :success
  end

  test "should get edit" do
    get edit_actum_url(@actum)
    assert_response :success
  end

  test "should update actum" do
    patch actum_url(@actum), params: { actum: { articulo: @actum.articulo, autoridad: @actum.autoridad, dominio: @actum.dominio, fecha: @actum.fecha, juzgado: @actum.juzgado, num_acta: @actum.num_acta, pertenece_a: @actum.pertenece_a, tipo_vehiculo: @actum.tipo_vehiculo } }
    assert_redirected_to actum_url(@actum)
  end

  test "should destroy actum" do
    assert_difference('Actum.count', -1) do
      delete actum_url(@actum)
    end

    assert_redirected_to acta_url
  end
end
