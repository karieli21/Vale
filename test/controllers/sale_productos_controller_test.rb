require 'test_helper'

class SaleProductosControllerTest < ActionController::TestCase
  setup do
    @sale_producto = sale_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_producto" do
    assert_difference('SaleProducto.count') do
      post :create, sale_producto: { producto_id: @sale_producto.producto_id, sale_id: @sale_producto.sale_id }
    end

    assert_redirected_to sale_producto_path(assigns(:sale_producto))
  end

  test "should show sale_producto" do
    get :show, id: @sale_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_producto
    assert_response :success
  end

  test "should update sale_producto" do
    patch :update, id: @sale_producto, sale_producto: { producto_id: @sale_producto.producto_id, sale_id: @sale_producto.sale_id }
    assert_redirected_to sale_producto_path(assigns(:sale_producto))
  end

  test "should destroy sale_producto" do
    assert_difference('SaleProducto.count', -1) do
      delete :destroy, id: @sale_producto
    end

    assert_redirected_to sale_productos_path
  end
end
