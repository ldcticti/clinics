require 'test_helper'

class JclinicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jclinic = jclinics(:one)
  end

  test "should get index" do
    get jclinics_url
    assert_response :success
  end

  test "should get new" do
    get new_jclinic_url
    assert_response :success
  end

  test "should create jclinic" do
    assert_difference('Jclinic.count') do
      post jclinics_url, params: { jclinic: { name: @jclinic.name, phone: @jclinic.phone } }
    end

    assert_redirected_to jclinic_url(Jclinic.last)
  end

  test "should show jclinic" do
    get jclinic_url(@jclinic)
    assert_response :success
  end

  test "should get edit" do
    get edit_jclinic_url(@jclinic)
    assert_response :success
  end

  test "should update jclinic" do
    patch jclinic_url(@jclinic), params: { jclinic: { name: @jclinic.name, phone: @jclinic.phone } }
    assert_redirected_to jclinic_url(@jclinic)
  end

  test "should destroy jclinic" do
    assert_difference('Jclinic.count', -1) do
      delete jclinic_url(@jclinic)
    end

    assert_redirected_to jclinics_url
  end
end
