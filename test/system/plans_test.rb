require "application_system_test_case"

class PlansTest < ApplicationSystemTestCase
  setup do
    @plan = plans(:one)
  end

  test "visiting the index" do
    visit plans_url
    assert_selector "h1", text: "Plans"
  end

  test "should create plan" do
    visit plans_url
    click_on "New plan"

    fill_in "Additional incremental cps", with: @plan.additional_incremental_cps
    fill_in "Automated invoices by projects", with: @plan.automated_invoices_by_projects
    fill_in "Billing", with: @plan.billing
    fill_in "Billing data export", with: @plan.billing_data_export
    fill_in "Call throughout", with: @plan.call_throughout
    fill_in "Dedicated ip", with: @plan.dedicated_ip
    fill_in "Hipaa baa", with: @plan.hipaa_baa
    fill_in "Media storage", with: @plan.media_storage
    fill_in "No of administrators", with: @plan.no_of_administrators
    fill_in "One year price lock", with: @plan.one_year_price_lock
    fill_in "Reporting storage", with: @plan.reporting_storage
    fill_in "Reseller tax agreement", with: @plan.reseller_tax_agreement
    fill_in "Rtmp out", with: @plan.rtmp_out
    fill_in "Subprojects", with: @plan.subprojects
    fill_in "Title", with: @plan.title
    click_on "Create Plan"

    assert_text "Plan was successfully created"
    click_on "Back"
  end

  test "should update Plan" do
    visit plan_url(@plan)
    click_on "Edit this plan", match: :first

    fill_in "Additional incremental cps", with: @plan.additional_incremental_cps
    fill_in "Automated invoices by projects", with: @plan.automated_invoices_by_projects
    fill_in "Billing", with: @plan.billing
    fill_in "Billing data export", with: @plan.billing_data_export
    fill_in "Call throughout", with: @plan.call_throughout
    fill_in "Dedicated ip", with: @plan.dedicated_ip
    fill_in "Hipaa baa", with: @plan.hipaa_baa
    fill_in "Media storage", with: @plan.media_storage
    fill_in "No of administrators", with: @plan.no_of_administrators
    fill_in "One year price lock", with: @plan.one_year_price_lock
    fill_in "Reporting storage", with: @plan.reporting_storage
    fill_in "Reseller tax agreement", with: @plan.reseller_tax_agreement
    fill_in "Rtmp out", with: @plan.rtmp_out
    fill_in "Subprojects", with: @plan.subprojects
    fill_in "Title", with: @plan.title
    click_on "Update Plan"

    assert_text "Plan was successfully updated"
    click_on "Back"
  end

  test "should destroy Plan" do
    visit plan_url(@plan)
    click_on "Destroy this plan", match: :first

    assert_text "Plan was successfully destroyed"
  end
end
