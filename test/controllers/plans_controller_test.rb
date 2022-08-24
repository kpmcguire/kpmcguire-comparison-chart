require "test_helper"

class PlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plan = plans(:one)
  end

  test "should get index" do
    get plans_url
    assert_response :success
  end

  test "should get new" do
    get new_plan_url
    assert_response :success
  end

  test "should create plan" do
    assert_difference("Plan.count") do
      post plans_url, params: { plan: { additional_incremental_cps: @plan.additional_incremental_cps, automated_invoices_by_projects: @plan.automated_invoices_by_projects, billing: @plan.billing, billing_data_export: @plan.billing_data_export, call_throughout: @plan.call_throughout, dedicated_ip: @plan.dedicated_ip, hipaa_baa: @plan.hipaa_baa, media_storage: @plan.media_storage, no_of_administrators: @plan.no_of_administrators, one_year_price_lock: @plan.one_year_price_lock, reporting_storage: @plan.reporting_storage, reseller_tax_agreement: @plan.reseller_tax_agreement, rtmp_out: @plan.rtmp_out, subprojects: @plan.subprojects, title: @plan.title } }
    end

    assert_redirected_to plan_url(Plan.last)
  end

  test "should show plan" do
    get plan_url(@plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_plan_url(@plan)
    assert_response :success
  end

  test "should update plan" do
    patch plan_url(@plan), params: { plan: { additional_incremental_cps: @plan.additional_incremental_cps, automated_invoices_by_projects: @plan.automated_invoices_by_projects, billing: @plan.billing, billing_data_export: @plan.billing_data_export, call_throughout: @plan.call_throughout, dedicated_ip: @plan.dedicated_ip, hipaa_baa: @plan.hipaa_baa, media_storage: @plan.media_storage, no_of_administrators: @plan.no_of_administrators, one_year_price_lock: @plan.one_year_price_lock, reporting_storage: @plan.reporting_storage, reseller_tax_agreement: @plan.reseller_tax_agreement, rtmp_out: @plan.rtmp_out, subprojects: @plan.subprojects, title: @plan.title } }
    assert_redirected_to plan_url(@plan)
  end

  test "should destroy plan" do
    assert_difference("Plan.count", -1) do
      delete plan_url(@plan)
    end

    assert_redirected_to plans_url
  end
end
