require 'test_helper'

class PurchaseDescriptionsControllerTest < ActionController::TestCase
  setup do
    @purchase_description = purchase_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_description" do
    assert_difference('PurchaseDescription.count') do
      post :create, purchase_description: { amount: @purchase_description.amount, input_id: @purchase_description.input_id, purchase_id: @purchase_description.purchase_id, total_value: @purchase_description.total_value }
    end

    assert_redirected_to purchase_description_path(assigns(:purchase_description))
  end

  test "should show purchase_description" do
    get :show, id: @purchase_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_description
    assert_response :success
  end

  test "should update purchase_description" do
    put :update, id: @purchase_description, purchase_description: { amount: @purchase_description.amount, input_id: @purchase_description.input_id, purchase_id: @purchase_description.purchase_id, total_value: @purchase_description.total_value }
    assert_redirected_to purchase_description_path(assigns(:purchase_description))
  end

  test "should destroy purchase_description" do
    assert_difference('PurchaseDescription.count', -1) do
      delete :destroy, id: @purchase_description
    end

    assert_redirected_to purchase_descriptions_path
  end
end
